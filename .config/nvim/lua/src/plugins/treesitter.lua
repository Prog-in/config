local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    return "nvim-treesitter not installed!"
end

treesitter.setup({
    highlight = {
        enable = true
    },
    indent = {enable = true},
    autotag = {enable = true},
    ensure_installed = {
        "json",
        "javascript",
        "tsx",
        "yaml",
        "html",
        "css",
        "markdown",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "python",
        "c",
        "cpp"
    },
    auto_install = true
})
