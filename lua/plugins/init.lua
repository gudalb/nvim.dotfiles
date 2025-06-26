return {
    {
        -- Debug Framework
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
        },
        config = function()
            require("config.nvim-dap")
        end,
        event = "VeryLazy",
    },
    { "nvim-neotest/nvim-nio" },
    {
        -- UI for debugging
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
        },
        config = function()
            require("config.nvim-dap-ui")
        end,
    },
    {
        "nvim-neotest/neotest",
        requires = {
            {
                "Issafalcon/neotest-dotnet",
            },
        },
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
    },
    {
        "Issafalcon/neotest-dotnet",
        lazy = false,
        dependencies = {
            "nvim-neotest/neotest",
        },
    },
    {
        "MonsieurTib/neonuget",
        config = function()
            require("neonuget").setup({
                -- Optional configuration
                dotnet_path = "dotnet", -- Path to dotnet CLI
                default_project = nil, -- Auto-detected, or specify path like "./MyProject/MyProject.csproj"
            })
        end,
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
    {
        "folke/snacks.nvim",
        opts = {
            picker = {
                hidden = true, -- for hidden files
                ignored = true, -- for .gitignore files
            },
        },
    },
    {
        "0oAstro/dim.lua",
        dependencies = { "nvim-treesitter/nvim-treesitter", "neovim/nvim-lspconfig" },
    },
    {

        "rachartier/tiny-inline-diagnostic.nvim",
        event = "VeryLazy", -- Or `LspAttach`
        priority = 1000, -- needs to be loaded in first
        config = function()
            require("tiny-inline-diagnostic").setup()
            vim.diagnostic.config({ virtual_text = false }) -- Only if needed in your configuration, if you already have native LSP diagnostics
        end,
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "netcoredbg",
            },
        },
    },
}
