local setup, comment = pcall(require, "Comment")
if not setup then
    return "Comment is not installed!"
end

comment.setup()
