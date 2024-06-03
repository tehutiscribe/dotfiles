-- Syntax formatting and linting
return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- Javascript
        null_ls.builtins.formatting.prettier,
        require("none-ls.diagnostics.eslint"),
        require("none-ls.code_actions.eslint"),
        -- Lua
        null_ls.builtins.formatting.stylua,
        -- Spelling
        null_ls.builtins.completion.spell,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
