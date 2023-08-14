local setup, gitsigns = pcall(require, "gitsigns")
if not setup then
    print("gitsigns not installed!")
end

gitsigns.setup()
