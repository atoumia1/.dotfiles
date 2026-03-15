return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "rust" },
        sync_install = false,
        auto_install = true,
        indent = { enable = true },
        highlight = { enable = true }
    },
    config = function(_,opts)
        local status_ok, configs = pcall(require, "nvim-treesitter.configs")
        if not status_ok then
            return
        end
        configs.setup(opts)
    end
}
