----------------
-- Remmapings --
----------------
-- Space goes to command mode in normal and visual
vim.keymap.set({"n","v"}, "<Space>", ":", { noremap = true })

-- Set "," to toggle line wrap
vim.keymap.set({"n","v"}, ",", function()
  vim.wo.wrap = not vim.wo.wrap
  if vim.wo.wrap then
    -- Wrapped line movement
    vim.keymap.set({"n", "v"}, "j", "gj", { buffer = true })
    vim.keymap.set({"n", "v"}, "k", "gk", { buffer = true })
    vim.keymap.set({"n", "v"}, "<Down>", "gj", { buffer = true })
    vim.keymap.set({"n", "v"}, "<Up>", "gk", { buffer = true })
  else
    -- Normal movement
    vim.keymap.set({"n", "v"}, "j", "j", { buffer = true })
    vim.keymap.set({"n", "v"}, "k", "k", { buffer = true })
    vim.keymap.set({"n", "v"}, "<Down>", "j", { buffer = true })
    vim.keymap.set({"n", "v"}, "<Up>", "k", { buffer = true })
  end
  print("Wrap: " .. (vim.wo.wrap and "ON" or "OFF"))
end, { desc = "Toggle line wrap" })

-------------
-- Visuals --
-------------
-- change color scheme
vim.cmd("colorscheme desert")

-- display number lines
vim.opt.number = true

-- make file unwrapped at first
vim.opt.wrap = false

-- add marker to wrapped lines
vim.opt.showbreak = "↳ "

-- make 5 lines of offset when scrolling vertically
vim.opt.scrolloff = 5

-- make tabs and trail spaces visible
vim.opt.list = true
vim.opt.listchars = {
  tab = "⇥ ",      -- shows a right arrow for tabs
  trail = "␣",    -- bucket for trailing spaces
  extends = "▶",
  precedes = "◀"
}

--------------
-- Behavior --
--------------
-- change tab behavior
vim.opt.tabstop = 4      -- how many spaces a <Tab> displays as
vim.opt.shiftwidth = 4   -- indentation size
vim.opt.softtabstop = 4  -- how many spaces <Tab> inserts
vim.opt.expandtab = true -- convert tabs to spaces

-- change search behavior
vim.opt.ignorecase = true  -- ignore case when searching...
vim.opt.smartcase = true   -- ...unless the search contains uppercase

-- make neovim use system clipboard
vim.opt.clipboard = "unnamedplus"

-- make .txt files be trated as markdown files
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = "*.txt",
  callback = function()
    vim.bo.filetype = "markdown"
  end,
})

-----------------
-- Status Line --
-----------------
vim.opt.statusline =
  " %f %m%r%h%w" ..      -- file, modified, readonly, help, preview
  " %y" ..               -- filetype
  " [%{&ff}]" ..         -- file format (unix/dos/mac)
  " [%{&fenc}]" ..       -- encoding
  " %= " ..              -- right-align
  " %p%% %c:%l/%L "      -- percent, position, total lines
