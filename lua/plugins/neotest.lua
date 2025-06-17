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
                args = { "--verbose", "--no-header", "-vv" },
                pytest_discover_instances = true,
            },
        },
    },
}
