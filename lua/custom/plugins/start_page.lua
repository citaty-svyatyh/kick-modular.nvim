-- Стартовая страница, если просто запустить neovim
-- Если нужны будут иконки, то бери отсюда и копипасть:
-- https://www.nerdfonts.com/cheat-sheet

return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  opts = function()
    local logo = [[


██╗  ██╗██╗ ██████╗██╗  ██╗███╗   ██╗███████╗ ██████╗
██║ ██╔╝██║██╔════╝██║ ██╔╝████╗  ██║██╔════╝██╔═══██╗
█████╔╝ ██║██║     █████╔╝ ██╔██╗ ██║█████╗  ██║   ██║
██╔═██╗ ██║██║     ██╔═██╗ ██║╚██╗██║██╔══╝  ██║   ██║
██║  ██╗██║╚██████╗██║  ██╗██║ ╚████║███████╗╚██████╔╝
╚═╝  ╚═╝╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝ ╚═════╝


    ]]

    logo = string.rep("\n", 8) .. logo .. "\n\n"

    local opts = {
      theme = "doom",
      hide = {
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"),
        -- stylua: ignore
        center = {
          { action = "Telescope find_files", desc = " Find file", icon = " ", key = "f" },
          { action = "ene | startinsert", desc = " New file", icon = " ", key = "n" },
          { action = "Telescope oldfiles", desc = " Recent files", icon = " ", key = "r" },
          { action = "Telescope live_grep", desc = " Find text", icon = " ", key = "g" },
          {
            action = 'WhichKey',
            desc = " Show all keyboard mappings",
            icon = " ",
            key = "m"
          },
          { action = "checkhealth", desc = " Check Healt Nvim", icon = " ", key = "x" },
          {
            action = "args " .. vim.fn.stdpath("config") .. "/**/*.lua ",
            desc = " Open Nvim config-files",
            icon = " ",
            key = "s"
          },
          { action = "Mason", desc = " Mason", icon = " ", key = "m" },
          { action = "Lazy", desc = " Lazy", icon = " ", key = "z" },
          { action = "qa", desc = " Quit", icon = " ", key = "q" },
        },
        footer = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return {
            "⚡ Neovim loaded " ..
            stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end,
      },
    }

    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end

    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        pattern = "DashboardLoaded",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    return opts
  end,
}


-- vim: ts=2 sts=2 sw=2 et
