-- You can also add or configure plugins by creating files in this `plugins/` folder
-- PLEASE REMOVE THE EXAMPLES YOU HAVE NO INTEREST IN BEFORE ENABLING THIS FILE
-- Here are some examples:

---@type LazySpec
return {

  -- == Examples of Adding Plugins ==

  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function() require("lsp_signature").setup() end,
  -- },

  -- == Examples of Overriding Plugins ==

  -- customize dashboard options
  -- {
  --   "folke/snacks.nvim",
  --   opts = {
  --     dashboard = {
  --       preset = {
  --         header = table.concat({
  --           " █████  ███████ ████████ ██████   ██████ ",
  --           "██   ██ ██         ██    ██   ██ ██    ██",
  --           "███████ ███████    ██    ██████  ██    ██",
  --           "██   ██      ██    ██    ██   ██ ██    ██",
  --           "██   ██ ███████    ██    ██   ██  ██████ ",
  --           "",
  --           "███    ██ ██    ██ ██ ███    ███",
  --           "████   ██ ██    ██ ██ ████  ████",
  --           "██ ██  ██ ██    ██ ██ ██ ████ ██",
  --           "██  ██ ██  ██  ██  ██ ██  ██  ██",
  --           "██   ████   ████   ██ ██      ██",
  --         }, "\n"),
  --       },
  --     },
  --   },
  -- },

  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom luasnip configuration such as filetype extend or custom snippets
  --     local luasnip = require "luasnip"
  --     luasnip.filetype_extend("javascript", { "javascriptreact" })
  --   end,
  -- },

  -- {
  --   "windwp/nvim-autopairs",
  --   config = function(plugin, opts)
  --     require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom autopairs configuration such as custom rules
  --     local npairs = require "nvim-autopairs"
  --     local Rule = require "nvim-autopairs.rule"
  --     local cond = require "nvim-autopairs.conds"
  --     npairs.add_rules(
  --       {
  --         Rule("$", "$", { "tex", "latex" })
  --           -- don't add a pair if the next character is %
  --           :with_pair(cond.not_after_regex "%%")
  --           -- don't add a pair if  the previous character is xxx
  --           :with_pair(
  --             cond.not_before_regex("xxx", 3)
  --           )
  --           -- don't move right when repeat character
  --           :with_move(cond.none())
  --           -- don't delete if the next character is xx
  --           :with_del(cond.not_after_regex "xx")
  --           -- disable adding a newline when you press <cr>
  --           :with_cr(cond.none()),
  --       },
  --       -- disable for .vim files, but it work for another filetypes
  --       Rule("a", "a", "-vim")
  --     )
  --   end,
  -- },

  {
    "m4xshen/hardtime.nvim",
    opts = {
      disable_mouse = false,
      --     disabled_keys = {
      --       ["<Down>"] = {},
      --       ["<End>"] = {},
      --       ["<Home>"] = {},
      --       ["<Left>"] = {},
      --       ["<PageDown>"] = {},
      --       ["<PageUp>"] = {},
      --       ["<Right>"] = {},
      --       ["<Up>"] = {},
      --     },
    },
  },

  {
    "mistricky/codesnap.nvim",
    opts = { has_breadcrumbs = false, save_path = "~/Pictures" },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
      },
    },
  },

  { "projectfluent/fluent.vim" },

  {
    "rebelot/heirline.nvim",
    dependencies = {
      "AstroNvim/astroui",
      ---@type AstroUIOpts
      opts = {
        icons = {
          WakaTime = "󰄉 WT", -- add icon for clock
        },
      },
    },
    opts = function(_, opts)
      local status = require "astroui.status"
      local job = require "plenary.job"

      local trim = function(value) return string.gsub(value, "^%s*(.-)%s*$", "%1") end

      local wt_today = "0 secs"
      local wt_cli_location = ""

      local wt_condition = function(self)
        if self.job ~= nil then return true end

        wt_cli_location = trim(vim.fn.execute("WakaTimeCliLocation", "silent!"))

        if wt_cli_location ~= "" then return true end

        return false
      end

      local wt_has_to_start_job = function(self) return self.current_time == nil or self.current_time + 60 <= os.time() end

      local wt_today_has_changed = function(self) return self.today ~= wt_today end

      local wt_today_init = function(self)
        if self.job == nil then
          self.job = job:new {
            command = wt_cli_location,
            args = { "--today" },
            on_exit = function(j, _)
              local today = trim(j:result()[1])

              if today == "" then return end

              wt_today = trim(j:result()[1])
            end,
          }

          self.prefix = "󰄉 WT"
          self.today = wt_today
        end

        if wt_has_to_start_job(self) then self.job:start() end

        if wt_today_has_changed(self) then self.today = wt_today end

        self.current_time = os.time()
      end

      local wt_provider = function(self)
        return status.utils.stylize(self.today, {
          icon = { kind = "WakaTime", padding = { right = 1 } }, -- add icon
          padding = { left = 1, right = 1 }, -- pad the right side
        })
      end

      local wt_update = function(self) return wt_today_has_changed(self) or wt_has_to_start_job(self) end

      table.insert(
        opts.statusline,
        9,
        status.component.builder {
          condition = wt_condition,
          init = wt_today_init,
          provider = wt_provider,
          update = wt_update,
        }
      )
    end,
  },

  { "stevearc/aerial.nvim", opts = { layout = { default_direction = "prefer_left" } } },

  {
    "stevearc/conform.nvim",
    opts = {
      default_format_opts = { lsp_format = "fallback" },
      format_on_save = function(bufnr)
        if vim.F.if_nil(vim.b[bufnr].autoformat, vim.g.autoformat, true) then return { timeout_ms = 500 } end
      end,
      formatters_by_ft = { rust = { "leptosfmt" } },
    },
  },
}
