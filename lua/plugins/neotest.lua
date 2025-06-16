return {
    "nvim-neotest/neotest",
    optional = true,
    dependencies = {
        "nvim-neotest/neotest-python",
    },
    opts = {
        adapters = {
            ["neotest-python"] = {
                runner = "pytest",
                python = ".venv/bin/python",
                args = { "--verbose", "--no-header" },
                pytest_discover_instances = true,
            },
        },
    },
}
