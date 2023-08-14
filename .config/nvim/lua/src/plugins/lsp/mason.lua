local mason_status, mason = pcall(require, "mason")
if not mason_status then
    return "mason not installed!"
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
    return "mason-lspconfig not installed!"
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
    return "mason_null_ls not installed!"
end

mason.setup()

mason_lspconfig.setup({
    ensure_installed = {
        "pyright",
        "clangd",
    },
})

--linter
mason_null_ls.setup({
    ensure_installed = {
        "mypy",
        "pylint",
    }
})
