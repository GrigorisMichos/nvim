return {
  "lervag/vimtex",
  lazy = false, -- Recommended by VimTeX author
  init = function()
    -- 1. Use Sioyek as the viewer
    vim.g.vimtex_view_method = "sioyek"

    -- 2. macOS specific path to the Sioyek binary
    vim.g.vimtex_view_sioyek_exe = "/Applications/sioyek.app/Contents/MacOS/sioyek"

    -- 3. Optimization: Don't open quickfix for warnings, only errors
    vim.g.vimtex_quickfix_mode = 0
    
    -- 4. Set the callback for inverse search
    vim.g.vimtex_callback_progpath = "nvim"
  end,
}