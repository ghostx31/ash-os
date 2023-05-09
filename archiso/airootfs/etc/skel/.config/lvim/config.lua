-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "catppuccin"
lvim.builtin.lualine.colorscheme = "catppuccin"
lvim.builtin.nvimtree.colorscheme = "catppuccin"
lvim.builtin.bufferline.options.always_show_bufferline = "true"
lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.bufferline.options.separator_style = "slant"
lvim.builtin.bufferline.options.right_mouse_command = "bdelete! %d"

-- keymappings [view all the defaults by pressing <leader>Lk]

lvim.leader = "space"
lvim.keys.insert_mode = {
  ["jk"] = "<Esc>",
}
vim.g.localleader = "\\"
vim.g.termguicolors = true

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
vim.o.guifont = "JetBrainsMono Nerd Font"
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "yaml",
  "go"
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true


-- Additional Plugins
lvim.plugins = {
  { "junegunn/vim-emoji" },
  { "ggandor/lightspeed.nvim" },
  { "catppuccin/nvim",
    name = "catppuccin",
    build = ":CatppuccinCompile",
    config = function()
      vim.g.catppuccin_flavour = "mocha"
      require("catppuccin").setup()
      vim.cmd "colorscheme catppuccin"
    end
  },
  { "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    init = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" },
  },
  { "fatih/vim-go" },
  { "p00f/nvim-ts-rainbow",
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "css", "scss", "html", "javascript" }, {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end,
  },
  {
    "ellisonleao/glow.nvim",
  },
  {
    "tpope/vim-fugitive",
    cmd = {
      "G",
      "Git",
      "Gdiffsplit",
      "Gread",
      "Gwrite",
      "Ggrep",
      "GMove",
      "GDelete",
      "GBrowse",
      "GRemove",
      "GRename",
      "Glgrep",
      "Gedit"
    },
    ft = { "fugitive" }
  },
}

vim.g.catppuccin_flavour = "mocha"

vim.g.mkdp_auto_start = 0

require("catppuccin").setup({
  dim_inactive = {
    enabled = false,
  },
  transparent_background = true,
  term_colors = true,
  compile = {
    enabled = true,
    path = vim.fn.stdpath "cache" .. "/catppuccin",
  },
  styles = {
    comments = { "italic" },
    conditionals = { "italic" },
  },
  integrations = {
    treesitter = true,
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { "italic" },
        hints = { "italic" },
        warnings = { "italic" },
        information = { "italic" },
      },
      underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
      },
    },
    cmp = true,
    gitgutter = true,
    gitsigns = true,
    telescope = true,
    nvimtree = {
      enabled = true,
      show_root = true,
    },
    dap = {
      enabled = false,
      enable_ui = false,
    },
    which_key = true,
    indent_blankline = {
      enabled = true,
      colored_indent_levels = true,
    },
    dashboard = true,
    neogit = true,
    fern = false,
    barbar = false,
    bufferline = true,
    markdown = true,
    notify = true,
    symbols_outline = true,
  },
})
vim.cmd [[colorscheme catppuccin]]

