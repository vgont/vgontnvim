vim.cmd("set termguicolors")

local colors = {
  bg = "#1e2a24",
  fg = "#a8e6a1",
  purple = "#9d7cd8",
  primary = "#89f6c4",
  secondary = "#6bbf7a",
  success = "#B9E8B5",
  danger = "#e06c75",
  warning = "#e5c07b",
  info = "#4DD0E1",
  muted = "#5f876f",
  dark = "#0f1a14",
  accent = "#cddc39",
  subtle = "#2a3f2d",
  border = "#4a5f4d",
  selection = "#2E4D3D",
}

vim.cmd("highlight clear")

local function set_hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- [All the set_hl() calls from your original config]
-- (Copy all the highlight definitions from your document)

vim.g.colors_name = "abhijeet_custom"
