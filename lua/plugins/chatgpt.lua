return {
  "jackMort/ChatGPT.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim",
    "nvim-telescope/telescope.nvim"
  },
  event = "VeryLazy",
  config = function()
    require("chatgpt").setup({})
    require("which-key").add(
      {
        { "c", group = "ChatGPT" },
        { "cc", "<cmd>ChatGPT<CR>", desc = "ChatGPT" },
        {
          mode = { "n", "v" },
          { "ca", "<cmd>ChatGPTRun add_tests<CR>", desc = "Add Tests" },
          { "cd", "<cmd>ChatGPTRun docstring<CR>", desc = "Docstring" },
          { "ce", "<cmd>ChatGPTEditWithInstruction<CR>", desc = "Edit with instruction" },
          { "cf", "<cmd>ChatGPTRun fix_bugs<CR>", desc = "Fix Bugs" },
          { "cg", "<cmd>ChatGPTRun grammar_correction<CR>", desc = "Grammar Correction" },
          { "ck", "<cmd>ChatGPTRun keywords<CR>", desc = "Keywords" },
          { "cl", "<cmd>ChatGPTRun code_readability_analysis<CR>", desc = "Code Readability Analysis" },
          { "co", "<cmd>ChatGPTRun optimize_code<CR>", desc = "Optimize Code" },
          { "cr", "<cmd>ChatGPTRun roxygen_edit<CR>", desc = "Roxygen Edit" },
          { "cs", "<cmd>ChatGPTRun summarize<CR>", desc = "Summarize" },
          { "ct", "<cmd>ChatGPTRun translate<CR>", desc = "Translate" },
          { "cx", "<cmd>ChatGPTRun explain_code<CR>", desc = "Explain Code" },
        },
      }
    )
    openai_params = {
      model = "gpt-4",
      frequency_penalty = 0,
      presence_penalty = 0,
      max_tokens = 6095,
      temperature = 0.2,
      top_p = 0.1,
      n = 1,
    }
  end
}
