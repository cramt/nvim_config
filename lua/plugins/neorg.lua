vim.o.conceallevel = 1

return {
  "nvim-neorg/neorg",
  version = "^8",
  dependencies = {
    -- versions pulled from here https://github.com/nvim-neorg/neorg/blob/03fb74927f358320f66cdd1337265c8e7f049fa3/build.lua#L16
    {
      "nvim-neotest/nvim-nio",
      version = "v1.7.0",
    },
    {
      "nvim-neorg/lua-utils.nvim",
      version = "v1.0.2",
    },
    {
      "MunifTanjim/nui.nvim",
      version = "v0.3.0",
    },
    {
      "nvim-lua/plenary.nvim",
      version = "v0.1.4",
    },
    {
      "pysan3/pathlib.nvim",
      version = "v2.2.2",
    },
    {
      "vhyrro/luarocks.nvim",
      priority = 1000, -- We'd like this plugin to load first out of the rest
      config = false,
    },
  },
  event = "VeryLazy",
  opts = {
    load = {
      ["core.defaults"] = {},
      ["core.concealer"] = {
        config = {
          icon_preset = "diamond",
        },
      },
      ["core.export"] = {},
      ["core.summary"] = {},
      ["core.keybinds"] = {},
      ["core.completion"] = {
        config = {
          engine = "nvim-cmp",
        },
      },
      ["core.journal"] = {},
      ["core.dirman"] = {
        config = {
          workspaces = {
            notes = "~/notes",
          },
          default_workspace = "notes",
        },
      },
    },
  },
}
