-- These Lua libraries keep their modules at the repository root.
local function load_lua_library(plugin)
    package.path = package.path .. ";" .. plugin.dir .. "/?.lua;" .. plugin.dir .. "/?/init.lua"
end

return {
    {
        "rest-nvim/rest.nvim",
        ft = "http",
        cmd = "Rest",
        -- Use nvim-treesitter's HTTP parser instead of the rockspec's unavailable version.
        build = false,
        dependencies = {
            "nvim-neotest/nvim-nio",
            "j-hui/fidget.nvim",
            { "lunarmodules/lua-mimetypes", lazy = true, build = false, config = load_lua_library },
            { "manoelcampos/xml2lua", lazy = true, build = false, config = load_lua_library },
        },
        init = function()
            vim.filetype.add({ extension = { http = "http", rest = "http" } })

            local certificate = {
                set_certificate_crt = vim.fn.expand("~/.avito/certs/personal.crt"),
                set_certificate_key = vim.fn.expand("~/.avito/certs/personal.key"),
            }
            vim.g.rest_nvim = {
                -- Requests can contain client secrets and access tokens.
                _log_level = vim.log.levels.OFF,
                cookies = { enable = false },
                response = { hooks = { format = true } },
                clients = {
                    curl = {
                        opts = {
                            certificates = {
                                ["https://staging.k.avito.ru/"] = certificate,
                                ["https://open-api-auth.prod.services.uz.internal/"] = certificate,
                            },
                        },
                    },
                },
            }

            vim.api.nvim_create_autocmd("FileType", {
                group = vim.api.nvim_create_augroup("rest_json_format", { clear = true }),
                pattern = "json",
                callback = function(event)
                    -- rest.nvim formats response bodies in an unnamed scratch buffer.
                    if vim.bo[event.buf].buftype == "nofile" and vim.api.nvim_buf_get_name(event.buf) == "" then
                        vim.bo[event.buf].formatexpr = ""
                        vim.bo[event.buf].formatprg = "jq --indent 2 ."
                    end
                end,
            })
        end,
        keys = {
            { "<leader>R", "", desc = "+Rest", ft = "http" },
            { "<leader>Rs", "<cmd>Rest run<cr>", desc = "Send request", ft = "http" },
            {
                "<leader>Rr",
                function()
                    -- rest.nvim's last request must run in an async context.
                    local request = require("rest-nvim.request")
                    if not request.last_request() then
                        vim.notify("No last request found", vim.log.levels.WARN, { title = "rest.nvim" })
                        return
                    end
                    local ui = require("rest-nvim.ui.result")
                    if not ui.is_open() then
                        vim.cmd("vertical Rest open")
                    end
                    ui.clear()
                    require("nio").run(request.run_last)
                end,
                desc = "Replay last request",
                ft = "http",
            },
            { "<leader>Re", "<cmd>Rest env select<cr>", desc = "Select environment file", ft = "http" },
            { "<leader>RE", "<cmd>Rest env show<cr>", desc = "Show environment file", ft = "http" },
            { "<leader>Ro", "<cmd>vertical Rest open<cr>", desc = "Open response", ft = "http" },
            {
                "<leader>Rn",
                function()
                    vim.fn.search("^### .", "W")
                end,
                desc = "Next request",
                ft = "http",
            },
            {
                "<leader>Rp",
                function()
                    vim.fn.search("^### .", "bW")
                end,
                desc = "Previous request",
                ft = "http",
            },
        },
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = { ensure_installed = { "http" } },
    },
}
