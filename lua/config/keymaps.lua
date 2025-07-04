-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--

local map = vim.keymap.set

-- The default LazyVim keymap clears search and stops snippet on escape
-- Set escape to also close any floating windows
map({ "i", "n", "s" }, "<esc>", function()
  vim.cmd("noh")
  LazyVim.cmp.actions.snippet_stop()

  -- Close any floating windows
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    if vim.api.nvim_win_is_valid(win) then
      local config = vim.api.nvim_win_get_config(win)
      if config.relative ~= "" then
        vim.api.nvim_win_close(win, false)
      end
    end
  end

  -- Send regular <Esc> key
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
end, { desc = "Escape: Clear hlsearch, stop snippet, close floating windows" })

-- Move to window using the <ctrl> ,aei keys (instead of default hjkl)
map("n", "<C-,>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-a>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-e>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-i>", "<C-w>l", { desc = "Go to Right Window", remap = true })
