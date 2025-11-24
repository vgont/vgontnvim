return {
  "cbochs/grapple.nvim",
  opts = {
    scope = "git_branch",
  },
  event = { "BufReadPost", "BufNewFile" },
  cmd = "Grapple",
  keys = {
    { "<leader>m",  "<cmd>Grapple toggle<cr>",          desc = "Grapple toggle tag" },
    { "<C-e>",      "<cmd>Grapple toggle_tags<cr>",     desc = "Grapple open tags window" },
    { "<leader>n",  "<cmd>Grapple cycle_tags next<cr>", desc = "Grapple cycle next tag" },
    { "<leader>N",  "<cmd>Grapple cycle_tags prev<cr>", desc = "Grapple cycle previous tag" },

    { "<leader>hw", "<cmd>Grapple select index=1<cr>",  desc = "Grapple select index=1" },
    { "<leader>hf", "<cmd>Grapple select index=2<cr>",  desc = "Grapple select index=2" },
    { "<leader>hp", "<cmd>Grapple select index=3<cr>",  desc = "Grapple select index=3" },
    { "<leader>1",  "<cmd>Grapple select index=1<cr>",  desc = "Grapple select index=1" },
    { "<leader>2",  "<cmd>Grapple select index=2<cr>",  desc = "Grapple select index=2" },
    { "<leader>3",  "<cmd>Grapple select index=3<cr>",  desc = "Grapple select index=3" },
  },
}
