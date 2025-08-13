local defaultUrl = "https://devx-copilot.tech"
local defaultModel = "mts-anya" -- Выбор модели которую будете использовать
local devxConfigDefaultPath = vim.fn.expand("$HOME/.continue/config.json") -- Путь к конфигурации и токену
local ok, config = pcall(vim.fn.readfile, devxConfigDefaultPath)

if not ok then
    return {}
end

config = vim.fn.join(config)
if type(config) == "string" then
    config = vim.fn.json_decode(config)
end

local function findModelByName(tbl, predicate)
    for _, v in ipairs(tbl) do
        if predicate(v) then
            return v
        end
    end
    return nil
end

local model = findModelByName(config.models, function(model)
    return model.model == defaultModel
end)

if not model then
    print("Unknown model: " .. defaultModel .. ". Abort!")
    return {}
end

return {
    {
        "olimorris/codecompanion.nvim",
        config = function()
            require("codecompanion").setup({
                strategies = {
                    chat = {
                        adapter = "devx",
                    },
                    cmd = {
                        adapter = "devx",
                    },
                    inline = {
                        adapter = "devx",
                    },
                },

                opts = {
                    language = "Russian",
                },
                adapters = {
                    devx = function()
                        return require("codecompanion.adapters").extend("openai_compatible", {
                            env = {
                                url = defaultUrl,
                                api_key = function()
                                    return model.apiKey
                                end,
                            },
                            headers = {
                                ["Content-Type"] = "application/json",
                                ["X-Copilot-User-Agent"] = "devxcopilot/2.0",
                                ["X-Copilot-User-Token"] = model.apiKey,
                            },
                            schema = {
                                model = {
                                    default = defaultModel,
                                },
                            },
                        })
                    end,
                },
            })
        end,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
    },
}
