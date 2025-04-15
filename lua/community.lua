-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder

  --Color
  { import = "astrocommunity.color.ccc-nvim" },
  { import = "astrocommunity.color.transparent-nvim" },

  -- Completion
  { import = "astrocommunity.completion.blink-cmp" },
  { import = "astrocommunity.completion.blink-cmp-git" },
  { import = "astrocommunity.completion.cmp-calc" },
  { import = "astrocommunity.completion.cmp-spell" },
  { import = "astrocommunity.completion.cmp-cmdline" },
  { import = "astrocommunity.completion.cmp-emoji" },

  --Docker
  { import = "astrocommunity.docker.lazydocker" },

  --Git
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.git.gitlinker-nvim" },
  { import = "astrocommunity.git.octo-nvim" },

  --Media
  { import = "astrocommunity.media.codesnap-nvim" },

  -- Packs
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },

  -- Resipes
  { import = "astrocommunity.recipes.neo-tree-dark" },
  { import = "astrocommunity.recipes.neovide" },
  { import = "astrocommunity.recipes.vscode" },

  -- Utility
  { import = "astrocommunity.utility.mason-tool-installer-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },

  -- Workflow
  { import = "astrocommunity.workflow.hardtime-nvim" },
  { import = "astrocommunity.workflow.precognition-nvim" },
}
