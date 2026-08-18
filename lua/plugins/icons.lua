return {
  {
    "echasnovski/mini.icons",

    -- NOTE: no `init` / `vim.filetype.add()` here anymore.
    -- Changing vim.filetype changes the REAL buffer filetype, which breaks
    -- treesitter highlighting (no parser for a fake filetype like
    -- "controller") and stops LSP clients from attaching (ts_ls/vtsls only
    -- attach on filetype = "typescript" / "typescriptreact").
    --
    -- mini.icons has its own resolution system that never touches
    -- `&filetype`, so we do all customization through `opts` instead:
    --
    --   * `extension` matches the WIDEST suffix after the FIRST dot.
    --     e.g. for "auth.controller.ts" it tries "controller.ts" before "ts".
    --     This is what covers all the NestJS-style `*.controller.ts` etc.
    --   * `file` matches the exact basename (case sensitive).
    --     This covers bare names like "router.ts", "auth.ts", "config.ts".

    opts = {
      extension = {
        -- NestJS
        ["controller.ts"] = { glyph = "󰒓", hl = "MiniIconsBlue" },
        ["service.ts"] = { glyph = "", hl = "MiniIconsYellow" },
        ["module.ts"] = { glyph = "󰏗", hl = "MiniIconsPurple" },
        ["guard.ts"] = { glyph = "󰌋", hl = "MiniIconsRed" },
        ["interceptor.ts"] = { glyph = "󰈈", hl = "MiniIconsCyan" },
        ["middleware.ts"] = { glyph = "󰒍", hl = "MiniIconsOrange" },
        ["resolver.ts"] = { glyph = "󰒉", hl = "MiniIconsGreen" },
        ["gateway.ts"] = { glyph = "󰒍", hl = "MiniIconsAzure" },
        ["provider.ts"] = { glyph = "󰒓", hl = "MiniIconsCyan" },

        -- Routes
        ["router.ts"] = { glyph = "󰑪", hl = "MiniIconsAzure" },
        ["routes.ts"] = { glyph = "󱁙", hl = "MiniIconsAzure" },
        ["route.ts"] = { glyph = "󱁙", hl = "MiniIconsAzure" },

        -- Auth
        ["auth.ts"] = { glyph = "󰒃", hl = "MiniIconsRed" },
        ["auth.tsx"] = { glyph = "󰒃", hl = "MiniIconsRed" },

        -- Context / config
        ["context.ts"] = { glyph = "󰆧", hl = "MiniIconsCyan" },
        ["context.tsx"] = { glyph = "󰆧", hl = "MiniIconsCyan" },
        ["constants.ts"] = { glyph = "󰏗", hl = "MiniIconsYellow" },
        ["constant.ts"] = { glyph = "󰏗", hl = "MiniIconsYellow" },
        ["config.ts"] = { glyph = "󰒓", hl = "MiniIconsOrange" },
        ["configuration.ts"] = { glyph = "󰒓", hl = "MiniIconsOrange" },

        -- DTO / entity / DB
        ["dto.ts"] = { glyph = "󰗀", hl = "MiniIconsYellow" },
        ["entity.ts"] = { glyph = "󰆼", hl = "MiniIconsPurple" },
        ["schema.ts"] = { glyph = "󰙅", hl = "MiniIconsGreen" },
        ["model.ts"] = { glyph = "󰆼", hl = "MiniIconsPurple" },
        ["repository.ts"] = { glyph = "󰆼", hl = "MiniIconsBlue" },
        ["migration.ts"] = { glyph = "󰆼", hl = "MiniIconsOrange" },

        -- Types
        ["type.ts"] = { glyph = "󰊕", hl = "MiniIconsPurple" },
        ["types.ts"] = { glyph = "󰊕", hl = "MiniIconsPurple" },
        ["interface.ts"] = { glyph = "󰜰", hl = "MiniIconsPurple" },

        -- Decorators
        ["decorator.ts"] = { glyph = "󰛢", hl = "MiniIconsRed" },
        ["decorators.ts"] = { glyph = "󰛢", hl = "MiniIconsRed" },

        -- Tests
        ["spec.ts"] = { glyph = "", hl = "MiniIconsGreen" },
        ["test.ts"] = { glyph = "", hl = "MiniIconsGreen" },
        ["spec.tsx"] = { glyph = "", hl = "MiniIconsGreen" },
        ["test.tsx"] = { glyph = "", hl = "MiniIconsGreen" },

        -- React
        ["component.tsx"] = { glyph = "󰡀", hl = "MiniIconsCyan" },
        ["component.ts"] = { glyph = "󰡀", hl = "MiniIconsCyan" },
        ["hook.ts"] = { glyph = "󰌷", hl = "MiniIconsPurple" },
        ["hooks.ts"] = { glyph = "󰌷", hl = "MiniIconsPurple" },

        -- API
        ["api.ts"] = { glyph = "󰘳", hl = "MiniIconsBlue" },
        ["client.ts"] = { glyph = "󰇰", hl = "MiniIconsCyan" },
        ["request.ts"] = { glyph = "󰏪", hl = "MiniIconsYellow" },
        ["response.ts"] = { glyph = "󰍉", hl = "MiniIconsGreen" },

        -- Utilities
        ["util.ts"] = { glyph = "󰘧", hl = "MiniIconsAzure" },
        ["utils.ts"] = { glyph = "󰘧", hl = "MiniIconsAzure" },
        ["helper.ts"] = { glyph = "󰋗", hl = "MiniIconsCyan" },
        ["helpers.ts"] = { glyph = "󰋗", hl = "MiniIconsCyan" },
        ["validator.ts"] = { glyph = "󰒓", hl = "MiniIconsRed" },
        ["validation.ts"] = { glyph = "󰒓", hl = "MiniIconsRed" },
      },

      -- Bare filenames (no prefix before the extension, e.g. just
      -- "auth.ts" on its own) need an exact `file` entry, since the
      -- `extension` resolver only fires when there's a prefix + dot
      -- before the matched suffix (e.g. "x.auth.ts").
      file = {
        -- NestJS
        ["controller.ts"] = { glyph = "󰒓", hl = "MiniIconsBlue" },
        ["service.ts"] = { glyph = "", hl = "MiniIconsYellow" },
        ["module.ts"] = { glyph = "󰏗", hl = "MiniIconsPurple" },
        ["guard.ts"] = { glyph = "󰌋", hl = "MiniIconsRed" },
        ["interceptor.ts"] = { glyph = "󰈈", hl = "MiniIconsCyan" },
        ["middleware.ts"] = { glyph = "󰒍", hl = "MiniIconsOrange" },
        ["resolver.ts"] = { glyph = "󰒉", hl = "MiniIconsGreen" },
        ["gateway.ts"] = { glyph = "󰒍", hl = "MiniIconsAzure" },
        ["provider.ts"] = { glyph = "󰒓", hl = "MiniIconsCyan" },

        -- Routes
        ["router.ts"] = { glyph = "󰑪", hl = "MiniIconsAzure" },
        ["routes.ts"] = { glyph = "󱁙", hl = "MiniIconsAzure" },
        ["route.ts"] = { glyph = "󱁙", hl = "MiniIconsAzure" },

        -- Auth
        ["auth.ts"] = { glyph = "󰒃", hl = "MiniIconsRed" },
        ["auth.tsx"] = { glyph = "󰒃", hl = "MiniIconsRed" },

        -- Context / config
        ["context.ts"] = { glyph = "󰆧", hl = "MiniIconsCyan" },
        ["context.tsx"] = { glyph = "󰆧", hl = "MiniIconsCyan" },
        ["constants.ts"] = { glyph = "󰏗", hl = "MiniIconsYellow" },
        ["constant.ts"] = { glyph = "󰏗", hl = "MiniIconsYellow" },
        ["config.ts"] = { glyph = "󰒓", hl = "MiniIconsOrange" },
        ["configuration.ts"] = { glyph = "󰒓", hl = "MiniIconsOrange" },

        -- DTO / entity / DB
        ["dto.ts"] = { glyph = "󰗀", hl = "MiniIconsYellow" },
        ["entity.ts"] = { glyph = "󰆼", hl = "MiniIconsPurple" },
        ["schema.ts"] = { glyph = "󰙅", hl = "MiniIconsGreen" },
        ["model.ts"] = { glyph = "󰆼", hl = "MiniIconsPurple" },
        ["repository.ts"] = { glyph = "󰆼", hl = "MiniIconsBlue" },
        ["migration.ts"] = { glyph = "󰆼", hl = "MiniIconsOrange" },

        -- Types
        ["type.ts"] = { glyph = "󰊕", hl = "MiniIconsPurple" },
        ["types.ts"] = { glyph = "󰊕", hl = "MiniIconsPurple" },
        ["interface.ts"] = { glyph = "󰜰", hl = "MiniIconsPurple" },

        -- Decorators
        ["decorator.ts"] = { glyph = "󰛢", hl = "MiniIconsRed" },
        ["decorators.ts"] = { glyph = "󰛢", hl = "MiniIconsRed" },

        -- Tests
        ["spec.ts"] = { glyph = "", hl = "MiniIconsGreen" },
        ["test.ts"] = { glyph = "", hl = "MiniIconsGreen" },
        ["spec.tsx"] = { glyph = "", hl = "MiniIconsGreen" },
        ["test.tsx"] = { glyph = "", hl = "MiniIconsGreen" },

        -- React
        ["component.tsx"] = { glyph = "󰡀", hl = "MiniIconsCyan" },
        ["component.ts"] = { glyph = "󰡀", hl = "MiniIconsCyan" },
        ["hook.ts"] = { glyph = "󰌷", hl = "MiniIconsPurple" },
        ["hooks.ts"] = { glyph = "󰌷", hl = "MiniIconsPurple" },

        -- API
        ["api.ts"] = { glyph = "󰘳", hl = "MiniIconsBlue" },
        ["client.ts"] = { glyph = "󰇰", hl = "MiniIconsCyan" },
        ["request.ts"] = { glyph = "󰏪", hl = "MiniIconsYellow" },
        ["response.ts"] = { glyph = "󰍉", hl = "MiniIconsGreen" },

        -- Utilities
        ["util.ts"] = { glyph = "󰘧", hl = "MiniIconsAzure" },
        ["utils.ts"] = { glyph = "󰘧", hl = "MiniIconsAzure" },
        ["helper.ts"] = { glyph = "󰋗", hl = "MiniIconsCyan" },
        ["helpers.ts"] = { glyph = "󰋗", hl = "MiniIconsCyan" },
        ["validator.ts"] = { glyph = "󰒓", hl = "MiniIconsRed" },
        ["validation.ts"] = { glyph = "󰒓", hl = "MiniIconsRed" },
      },
    },
  },

  -- ================================================================
  -- Oil.nvim
  -- ================================================================

  {
    "stevearc/oil.nvim",
    opts = {
      columns = {
        "icon",
      },
    },
  },
}
