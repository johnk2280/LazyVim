return {
    "nvim-neotest/neotest",
    optional = true,
    dependencies = {
        "nvim-neotest/neotest-python",
        "linux-cultist/venv-selector.nvim",
    },
    -- opts = {
    --     adapters = {
    --         ["neotest-python"] = {
    --             runner = "pytest",
    --             python = ".venv/bin/python",
    --             args = { "--verbose", "--no-header", "-vv", "--cov" },
    --             pytest_discover_instances = true,
    --         },
    --     },
    -- },
    opts = function(_, opts)
        opts.adapters = opts.adapters or {}
        table.insert(
            opts.adapters,
            require("neotest-python")({
                runner = "pytest",
                args = { "--verbose", "--no-header", "-vv", "--cov" },
                pytest_discover_instances = true,
                python = function()
                    local python_venv = require("venv-selector").python()
                    -- print("python_venv = ", python_venv)
                    return python_venv or ".venv/bin/python"
                end,
            })
        )
        return opts
    end,
}
