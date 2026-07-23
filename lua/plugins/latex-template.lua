return {
  {
    "nvim-lua/plenary.nvim", -- already installed by many configs
    config = function()
      vim.api.nvim_create_user_command("LatexTemplate", function()
        vim.ui.select({
          "conference",
          "journal",
        }, {
          prompt = "Select template:",
        }, function(choice)
          if not choice then
            return
          end

          local source = vim.fn.stdpath("config") .. "/templates/" .. choice

          local target = vim.fn.getcwd()

          vim.fn.system({
            "cp",
            "-R",
            source .. "/.",
            target,
          })

          vim.notify("Copied template: " .. choice)
        end)
      end, {})
    end,
  },
}
