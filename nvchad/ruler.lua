return {
  cursor_position = function()

    --- https://github.com/NvChad/ui/blob/main/lua/nvchad_ui/statusline/modules.lua
    local sep_style = vim.g.statusline_sep_style
    local separators = (type(sep_style) == "table" and sep_style)
      or require("nvchad_ui.icons").statusline_separators[sep_style]
    local sep_l = separators["left"]
    -- local sep_r = separators["right"]
    local left_sep = "%#St_pos_sep#" .. sep_l .. "%#St_pos_icon#" .. " "

    local current_line = vim.fn.line "."
    local total_line = vim.fn.line "$"
    local text = math.modf((current_line / total_line) * 100) .. tostring "%%"

    text = (current_line == 1 and "Top") or text
    text = (current_line == total_line and "Bot") or text

  -- local test = left_sep .. "%#St_pos_text#" .. " " .. text .. " "
    --- https://github.com/NvChad/ui/blob/main/lua/nvchad_ui/statusline/modules.lua


    local curpos = vim.fn.getcharpos "."
    return left_sep .. "%#St_pos_text#" .. " " .. text .. " " .. "%#St_pos_icon#" .. " " .. curpos[2] .. ":" .. curpos[3] .. " "
  end,
}
