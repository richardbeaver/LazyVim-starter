-- Setup LSP and formatting for Mojo files

-- Basic setup taken from this forum post:
-- https://forum.modular.com/t/fyi-simple-lsp-setup-in-lazynvim/1142

require("lspconfig").mojo.setup({ cmd = { "mojo-lsp-server", "-I", "." } })

return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      mojo = { "mojo" },
    },
    -- formatters_by_ft = {
    --   mojo = { "mojo_format" },
    -- },
    formatters = {
      mojo = {
        command = "mojo",
        args = { "format", "-" },
        stdin = true,
      },
    },
  },
}
