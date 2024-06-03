-- Filesystem tree browser
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    vim.keymap.set("n", "<leader>1", ":Neotree filesystem toggle<CR>")
    vim.keymap.set("n", "<leader>2", ":Neotree buffers float toggle<CR>")
    vim.keymap.set("n", "<leader>3", ":Neotree git_status toggle<CR>")
  end,
}
