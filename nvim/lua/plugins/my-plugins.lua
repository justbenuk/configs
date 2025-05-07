return {
  -- My color scheme
  { "Mofiqul/dracula.nvim" },

  -- Configure LazyVim to load dracula
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      colorscheme = "tokyonight",
    },
  },
  -- add marks to the die of the buffer
  {
    "chentoast/marks.nvim",
    config = function()
      require("marks").setup()
    end,
  },
  -- added which key
  {
    "folke/which-key.nvim",
    keys = {
      ["<leader>f"] = { name = "+file" },
      ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Find File" },
      ["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
      ["<leader>fn"] = { "<cmd>Telescope enew<cr>", "New File" },
    }
  },

}
