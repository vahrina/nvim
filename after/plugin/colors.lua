function ColorMyPencils(color)
    color = color or "catppuccin"
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2A2A2A" })
end

ColorMyPencils()

