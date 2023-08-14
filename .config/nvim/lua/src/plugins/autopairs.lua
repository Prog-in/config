local autopairs_setup, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_setup then
    return "nvim-autopairs not installed!"
end

autopairs.setup({
    check_ts = true, --enable treesitter
    ts_config = {
        lua = {"string"}, -- dont add pairs in lua string treesitter nodes
        javascript = {"template_string"}, -- dont add pairs in javascript template_string
    },
})

-- import nvim-autopairs completion funcionality
local cmp_autopairs_setup, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
if not cmp_autopairs_setup then
    return "nvim-autopairs.completion not installed!"
end

-- import nvim-cmp plugin (completions plugin)
local cmp_setup, cmp = pcall(require, "cmp")
if not cmp_setup then
    return "nvim-cmp not installed!"
end

-- make autopairs and completion work together
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

