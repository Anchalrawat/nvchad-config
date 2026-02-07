return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "go" , "c" , "cpp" , "tsx", "css"
  		},
      highlight = { enable = true },
      indent = { enable = true },
  	},
  },

  {
    "norcalli/nvim-colorizer.lua",
    event = "BufReadPre",
    config = function()
      require("colorizer").setup({
        "*", -- Highlight all files
        css = { rgb_fn = true }, -- Enable parsing rgb(...) functions in css
        html = { names = false } -- Disable named colors in HTML
      }, {
        RGB = false, -- #RGB hex codes
        RRGGBB = false, -- #RRGGBB hex codes
        names = false, -- Disable "Name" codes like Blue
        RRGGBBAA = false, -- #RRGGBBAA hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = false, -- CSS hsl() and hsla() functions
        mode = "background", -- Set the display mode
      })
    end,
  },
}
