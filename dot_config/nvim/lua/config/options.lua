-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Source .vimrc for compatibility with Vim settings
local vimrc = vim.fn.expand("~/.vimrc")
if vim.fn.filereadable(vimrc) == 1 then
  vim.cmd("source " .. vimrc)
end

vim.api.nvim_create_autocmd("VimLeave", {
  desc = "Create a dummy Session.vim for tmux-resurrect",
  callback = function()
    local file = io.open(vim.fn.getcwd() .. "/Session.vim", "w")
    if file then
      file:write("lua require('persistence').load()\n")
      file:close()
    end
  end,
})
