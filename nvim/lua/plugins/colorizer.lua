return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      filetypes = {
        "css",
        "html",
        "lua",
        "javascript",
        "typescript",
        "typescriptreact",
        "javascriptreact",
      },
      user_default_options = {
        RGB = true, 
        RRGGBB = true, 
        names = true, 
        RRGGBBAA = true, 
        rgb_fn = true, 
        hsl_fn = true, 
        css = true, 
        css_fn = true, 
        tailwind = true, 
        sass = { enable = true },
        always_update = true,
      },
    })
  end,
}
