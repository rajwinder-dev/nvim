return {
  {
    "echasnovski/mini.icons",

    init = function()
      vim.filetype.add({
        pattern = {
          -- ============================================================
          -- NestJS
          -- ============================================================

          [".*%.controller%.ts"] = "controller",
          [".*%.service%.ts"] = "service",
          [".*%.module%.ts"] = "module",
          [".*%.guard%.ts"] = "guard",
          [".*%.interceptor%.ts"] = "interceptor",
          [".*%.middleware%.ts"] = "middleware",
          [".*%.resolver%.ts"] = "resolver",
          [".*%.gateway%.ts"] = "gateway",
          [".*%.provider%.ts"] = "provider",

          -- ============================================================
          -- Routes
          -- ============================================================

          [".*router%.ts"] = "router",
          [".*routes%.ts"] = "route",
          [".*route%.ts"] = "route",

          -- ============================================================
          -- Application / Entry points
          -- ============================================================

          [".*main%.ts"] = "main",
          ["app.ts"] = "app",
          ["index.ts"] = "index",

          -- ============================================================
          -- Authentication / Security
          -- ============================================================

          ["auth.ts"] = "auth",
          [".*%.auth%.ts"] = "auth",
          [".*%.auth%.tsx"] = "auth",

          -- ============================================================
          -- Context / Configuration
          -- ============================================================

          [".*context%.ts"] = "context",
          [".*context%.tsx"] = "context",

          [".*constants%.ts"] = "constants",
          [".*constant%.ts"] = "constants",

          [".*config%.ts"] = "config",
          [".*configuration%.ts"] = "config",

          -- ============================================================
          -- DTO / Entity / Database
          -- ============================================================

          [".*%.dto%.ts"] = "dto",
          [".*%.entity%.ts"] = "entity",
          [".*%.schema%.ts"] = "schema",
          [".*%.model%.ts"] = "model",
          [".*%.repository%.ts"] = "repository",
          [".*%.migration%.ts"] = "migration",

          -- ============================================================
          -- Types
          -- ============================================================

          [".*%.type%.ts"] = "type",
          [".*%.types%.ts"] = "type",
          [".*%.interface%.ts"] = "interface",

          -- ============================================================
          -- Decorators
          -- ============================================================

          [".*%.decorator%.ts"] = "decorator",
          [".*%.decorators%.ts"] = "decorator",

          -- ============================================================
          -- Testing
          -- ============================================================

          [".*%.spec%.ts"] = "spec",
          [".*%.test%.ts"] = "test",
          [".*%.spec%.tsx"] = "spec",
          [".*%.test%.tsx"] = "test",

          -- ============================================================
          -- React / Components
          -- ============================================================

          [".*%.component%.tsx"] = "component",
          [".*%.component%.ts"] = "component",

          [".*%.hook%.ts"] = "hook",
          [".*%.hooks%.ts"] = "hook",

          -- ============================================================
          -- API
          -- ============================================================

          [".*%.api%.ts"] = "api",
          [".*%.client%.ts"] = "client",
          [".*%.request%.ts"] = "request",
          [".*%.response%.ts"] = "response",

          -- ============================================================
          -- Utilities
          -- ============================================================

          [".*%.util%.ts"] = "util",
          [".*%.utils%.ts"] = "util",
          [".*%.helper%.ts"] = "helper",
          [".*%.helpers%.ts"] = "helper",
          [".*%.validator%.ts"] = "validator",
          [".*%.validation%.ts"] = "validator",
        },
      })
    end,

    opts = {
      filetype = {

        -- ============================================================
        -- NestJS
        -- ============================================================

        router = {
          glyph = "󰑪",
          hl = "MiniIconsAzure",
        },

        route = {
          glyph = "󱁙",
          hl = "MiniIconsAzure",
        },

        controller = {
          glyph = "󰒓",
          hl = "MiniIconsBlue",
        },

        service = {
          glyph = "",
          hl = "MiniIconsYellow",
        },

        module = {
          glyph = "󰏗",
          hl = "MiniIconsPurple",
        },

        guard = {
          glyph = "󰌋",
          hl = "MiniIconsRed",
        },

        interceptor = {
          glyph = "󰈈",
          hl = "MiniIconsCyan",
        },

        middleware = {
          glyph = "󰒍",
          hl = "MiniIconsOrange",
        },

        resolver = {
          glyph = "󰒉",
          hl = "MiniIconsGreen",
        },

        gateway = {
          glyph = "󰒍",
          hl = "MiniIconsAzure",
        },

        provider = {
          glyph = "󰒓",
          hl = "MiniIconsCyan",
        },

        -- ============================================================
        -- Application
        -- ============================================================

        main = {
          glyph = "󰈔",
          hl = "MiniIconsBlue",
        },

        app = {
          glyph = "󰀻",
          hl = "MiniIconsGreen",
        },

        index = {
          glyph = "󰉋",
          hl = "MiniIconsYellow",
        },

        -- ============================================================
        -- Auth / Security
        -- ============================================================

        auth = {
          glyph = "󰒃",
          hl = "MiniIconsRed",
        },

        -- ============================================================
        -- Context / Config
        -- ============================================================

        context = {
          glyph = "󰆧",
          hl = "MiniIconsCyan",
        },

        constants = {
          glyph = "󰏗",
          hl = "MiniIconsYellow",
        },

        config = {
          glyph = "󰒓",
          hl = "MiniIconsOrange",
        },

        -- ============================================================
        -- Database
        -- ============================================================

        dto = {
          glyph = "󰗀",
          hl = "MiniIconsYellow",
        },

        entity = {
          glyph = "󰆼",
          hl = "MiniIconsPurple",
        },

        schema = {
          glyph = "󰙅",
          hl = "MiniIconsGreen",
        },

        model = {
          glyph = "󰆼",
          hl = "MiniIconsPurple",
        },

        repository = {
          glyph = "󰆼",
          hl = "MiniIconsBlue",
        },

        migration = {
          glyph = "󰆼",
          hl = "MiniIconsOrange",
        },

        -- ============================================================
        -- Types
        -- ============================================================

        type = {
          glyph = "󰊕",
          hl = "MiniIconsPurple",
        },

        interface = {
          glyph = "󰜰",
          hl = "MiniIconsPurple",
        },

        -- ============================================================
        -- Decorators
        -- ============================================================

        decorator = {
          glyph = "󰛢",
          hl = "MiniIconsRed",
        },

        -- ============================================================
        -- Tests
        -- ============================================================

        spec = {
          glyph = "",
          hl = "MiniIconsGreen",
        },

        test = {
          glyph = "",
          hl = "MiniIconsGreen",
        },

        -- ============================================================
        -- React
        -- ============================================================

        component = {
          glyph = "󰡀",
          hl = "MiniIconsCyan",
        },

        hook = {
          glyph = "󰌷",
          hl = "MiniIconsPurple",
        },

        -- ============================================================
        -- API
        -- ============================================================

        api = {
          glyph = "󰘳",
          hl = "MiniIconsBlue",
        },

        client = {
          glyph = "󰇰",
          hl = "MiniIconsCyan",
        },

        request = {
          glyph = "󰏪",
          hl = "MiniIconsYellow",
        },

        response = {
          glyph = "󰍉",
          hl = "MiniIconsGreen",
        },

        -- ============================================================
        -- Utilities
        -- ============================================================

        util = {
          glyph = "󰘧",
          hl = "MiniIconsAzure",
        },

        helper = {
          glyph = "󰋗",
          hl = "MiniIconsCyan",
        },

        validator = {
          glyph = "󰒓",
          hl = "MiniIconsRed",
        },
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
