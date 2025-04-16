-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- import/override with your plugins folder

  --Color
  { import = "astrocommunity.color.ccc-nvim" },
  { import = "astrocommunity.color.nvim-highlight-colors" },
  { import = "astrocommunity.color.transparent-nvim" },

  -- Completion
  { import = "astrocommunity.completion.blink-cmp" },
  -- { import = "astrocommunity.completion.blink-cmp-git" },
  { import = "astrocommunity.completion.cmp-calc" },
  { import = "astrocommunity.completion.cmp-spell" },
  -- { import = "astrocommunity.completion.cmp-cmdline" },
  { import = "astrocommunity.completion.cmp-emoji" },

  -- Debugger
  { import = "astrocommunity.debugging.nvim-chainsaw" },

  --Docker
  { import = "astrocommunity.docker.lazydocker" },

  -- Editing support
  { import = "astrocommunity.editing-support.conform-nvim" },
  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.nvim-context-vt" },
  { import = "astrocommunity.editing-support.nvim-devdocs" },
  { import = "astrocommunity.editing-support.nvim-regexplainer" },
  { import = "astrocommunity.editing-support.nvim-treesitter-context" },
  { import = "astrocommunity.editing-support.nvim-treesitter-endwise" },
  { import = "astrocommunity.editing-support.multiple-cursors-nvim" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.treesj" },
  -- { import = "astrocommunity.editing-support.vim-doge" },

  -- Game
  { import = "astrocommunity.game.leetcode-nvim" },

  --Git
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.git.gitlinker-nvim" },
  { import = "astrocommunity.git.octo-nvim" },

  -- Keybinding
  { import = "astrocommunity.keybinding.nvcheatsheet-nvim" },

  -- LSP
  { import = "astrocommunity.lsp.actions-preview-nvim" },
  { import = "astrocommunity.lsp.lsplinks-nvim" },
  -- { import = "astrocommunity.lsp.lsp-signature-nvim" },
  { import = "astrocommunity.lsp.lspsaga-nvim" },
  { import = "astrocommunity.lsp.nvim-lsp-endhints" },
  { import = "astrocommunity.lsp.nvim-lsp-file-operations" },

  -- Markdown and Latex
  { import = "astrocommunity.markdown-and-latex.markmap-nvim" },
  -- { import = "astrocommunity.markdown-and-latex.peek-nvim" },
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },

  --Media
  { import = "astrocommunity.media.codesnap-nvim" },
  { import = "astrocommunity.media.img-clip-nvim" },
  -- { import = "astrocommunity.media.pets-nvim" },
  { import = "astrocommunity.media.vim-wakatime" },

  -- Motion
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  -- { import = "astrocommunity.motion.vim-matchup" },

  -- Note taking
  { import = "astrocommunity.note-taking.global-note-nvim" },

  -- Packs
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.fish" },
  { import = "astrocommunity.pack.full-dadbod" },
  { import = "astrocommunity/pack/go" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.ruby" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.yaml" },

  -- Programming language support
  { import = "astrocommunity.programming-language-support.rest-nvim" },
  { import = "astrocommunity.programming-language-support.web-tools-nvim" },

  -- Resipes
  { import = "astrocommunity.recipes.ai" },
  -- { import = "astrocommunity.recipes.astrolsp-auto-signature-help" },
  { import = "astrocommunity.recipes.astrolsp-no-insert-inlay-hints" },
  -- { import = "astrocommunity.recipes.auto-session-restore" },
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  { import = "astrocommunity.recipes.neo-tree-dark" },
  { import = "astrocommunity.recipes.neovide" },
  { import = "astrocommunity.recipes.picker-lsp-mappings" },
  { import = "astrocommunity.recipes.vscode" },

  -- Scrolling
  { import = "astrocommunity.scrolling.satellite-nvim" },

  -- Search
  -- { import = "astrocommunity.search.nvim-hlslens" },
  { import = "astrocommunity/search/sad-nvim" },

  -- Snippets
  { import = "astrocommunity.snippet.nvim-snippets" },

  -- Split and Window
  { import = "astrocommunity.split-and-window.colorful-winsep-nvim" },

  -- Syntax
  { import = "astrocommunity.syntax.hlargs-nvim" },

  -- Test
  { import = "astrocommunity.test.neotest" },

  -- Utility
  { import = "astrocommunity.utility.mason-tool-installer-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.utility.nvim-toggler" },

  -- Workflow
  { import = "astrocommunity.workflow.hardtime-nvim" },
  { import = "astrocommunity.workflow.precognition-nvim" },
}
