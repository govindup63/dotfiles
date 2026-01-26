return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    event = "VeryLazy",
    init = function()
      local ok, lazy = pcall(require, "lazy")
      if ok then
        lazy.load({ plugins = { "nvim-treesitter" } })
      end
    end,
  },
}
