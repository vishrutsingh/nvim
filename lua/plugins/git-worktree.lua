return{
  "ThePrimeagen/git-worktree.nvim",
  config = function ()
    require("git-worktree").setup()
    require("telescope").load_extension("git_worktree")
    vim.keymap.set("n", "<leader>tl", "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>",
      {silent = true, noremap = true, desc = "List Git Worktrees"}
    )
    vim.keymap.set("n", "<leader>ts", "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>",
      {silent = true, noremap = true, desc = "Create Git Worktree"}
    )
  end
}
