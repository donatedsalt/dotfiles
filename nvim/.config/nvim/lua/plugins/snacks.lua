return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      bigfile = { enabled = true },
      dashboard = { enabled = true },
      explorer = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      image = { enabled = true },
      notifier = {
        enabled = true,
        margin = {
          top = 1,
          right = 2,
          bottom = 0,
        },
      },
      picker = { enabled = true },
      quickfile = { enabled = true },
      scope = { enabled = true },
      scroll = {
        enabled = true,
        animate = { easing = 'inOutCubic' },
      },
      statuscolumn = {
        enabled = true,
        folds = {
          open = true,
          git_hl = true,
        },
      },
      words = { enabled = true },
      styles = {
        notification = {
          wo = { wrap = true },
        },
      },
      zen = { enabled = true },
    },
    keys = {
      -- Explorer
      {
        '<leader>e',
        function()
          Snacks.explorer()
        end,
        desc = 'File Explorer',
      },
      -- Color Schemes
      {
        '<leader>sT',
        function()
          Snacks.picker.colorschemes()
        end,
        desc = 'Theme',
      },
      -- Search
      {
        '<leader><space>',
        function()
          Snacks.picker.smart()
        end,
        desc = 'Smart Find Files',
      },
      {
        '<leader>sf',
        function()
          Snacks.picker.files()
        end,
        desc = 'Search Files',
      },
      {
        '<leader>sn',
        function()
          Snacks.notifier.show_history()
        end,
        desc = 'Search Notification History',
      },
      {
        '<leader>sN',
        function()
          Snacks.picker.files { cwd = vim.fn.stdpath 'config' }
        end,
        desc = 'Search Neovim Config File',
      },
      {
        '<leader>sP',
        function()
          Snacks.picker.projects()
        end,
        desc = 'Projects',
      },
      {
        '<leader>sg',
        function()
          Snacks.picker.grep_buffers()
        end,
        desc = 'Grep Open Buffers',
      },
      {
        '<leader>sG',
        function()
          Snacks.picker.grep()
        end,
        desc = 'Grep',
      },
      -- {
      --   '<leader>sG',
      --   function()
      --     Snacks.picker.git_files()
      --   end,
      --   desc = 'Search Git Files',
      -- },
      {
        '<leader>sw',
        function()
          Snacks.picker.grep_word()
        end,
        desc = 'Visual selection or word',
        mode = { 'n', 'x' },
      },
      {
        '<leader>s"',
        function()
          Snacks.picker.registers()
        end,
        desc = 'Registers',
      },
      {
        '<leader>s/',
        function()
          Snacks.picker.search_history()
        end,
        desc = 'Search History',
      },
      {
        '<leader>sa',
        function()
          Snacks.picker.autocmds()
        end,
        desc = 'Autocmds',
      },
      {
        '<leader>sb',
        function()
          Snacks.picker.lines()
        end,
        desc = 'Buffer Lines',
      },
      {
        '<leader>sB',
        function()
          Snacks.picker.buffers()
        end,
        desc = 'Buffers',
      },
      {
        '<leader>sc',
        function()
          Snacks.picker.command_history()
        end,
        desc = 'Command History',
      },
      {
        '<leader>sC',
        function()
          Snacks.picker.commands()
        end,
        desc = 'Commands',
      },
      {
        '<leader>sd',
        function()
          Snacks.picker.diagnostics_buffer()
        end,
        desc = 'Buffer Diagnostics',
      },
      {
        '<leader>sD',
        function()
          Snacks.picker.diagnostics()
        end,
        desc = 'Diagnostics',
      },
      {
        '<leader>sh',
        function()
          Snacks.picker.help()
        end,
        desc = 'Help Pages',
      },
      {
        '<leader>sH',
        function()
          Snacks.picker.highlights()
        end,
        desc = 'Highlights',
      },
      {
        '<leader>si',
        function()
          Snacks.picker.icons()
        end,
        desc = 'Icons',
      },
      {
        '<leader>sj',
        function()
          Snacks.picker.jumps()
        end,
        desc = 'Jumps',
      },
      {
        '<leader>sk',
        function()
          Snacks.picker.keymaps()
        end,
        desc = 'Keymaps',
      },
      {
        '<leader>sl',
        function()
          Snacks.picker.loclist()
        end,
        desc = 'Location List',
      },
      {
        '<leader>sm',
        function()
          Snacks.picker.marks()
        end,
        desc = 'Marks',
      },
      {
        '<leader>sM',
        function()
          Snacks.picker.man()
        end,
        desc = 'Man Pages',
      },
      {
        '<leader>sp',
        function()
          Snacks.picker.lazy()
        end,
        desc = 'Plugin Spec',
      },
      {
        '<leader>sq',
        function()
          Snacks.picker.qflist()
        end,
        desc = 'Quickfix List',
      },
      {
        '<leader>sr',
        function()
          Snacks.picker.resume()
        end,
        desc = 'Resume',
      },
      {
        '<leader>sR',
        function()
          Snacks.picker.recent()
        end,
        desc = 'Recent',
      },
      {
        '<leader>su',
        function()
          Snacks.picker.undo()
        end,
        desc = 'Undo History',
      },
      -- git
      {
        '<leader>gb',
        function()
          Snacks.picker.git_branches()
        end,
        desc = 'Git Branches',
      },
      {
        '<leader>gl',
        function()
          Snacks.picker.git_log()
        end,
        desc = 'Git Log',
      },
      {
        '<leader>gL',
        function()
          Snacks.picker.git_log_line()
        end,
        desc = 'Git Log Line',
      },
      {
        '<leader>gs',
        function()
          Snacks.picker.git_status()
        end,
        desc = 'Git Status',
      },
      {
        '<leader>gS',
        function()
          Snacks.picker.git_stash()
        end,
        desc = 'Git Stash',
      },
      {
        '<leader>gd',
        function()
          Snacks.picker.git_diff()
        end,
        desc = 'Git Diff (Hunks)',
      },
      {
        '<leader>gf',
        function()
          Snacks.picker.git_log_file()
        end,
        desc = 'Git Log File',
      },
      -- gh
      {
        '<leader>gi',
        function()
          Snacks.picker.gh_issue()
        end,
        desc = 'GitHub Issues (open)',
      },
      {
        '<leader>gI',
        function()
          Snacks.picker.gh_issue { state = 'all' }
        end,
        desc = 'GitHub Issues (all)',
      },
      {
        '<leader>gp',
        function()
          Snacks.picker.gh_pr()
        end,
        desc = 'GitHub Pull Requests (open)',
      },
      {
        '<leader>gP',
        function()
          Snacks.picker.gh_pr { state = 'all' }
        end,
        desc = 'GitHub Pull Requests (all)',
      },
      -- LSP
      {
        '<leader>ca',
        vim.lsp.buf.code_action,
        {
          lsp = { method = 'textDocument/codeAction' },
        },
        desc = 'Code Action',
      },
      {
        'gd',
        function()
          Snacks.picker.lsp_definitions()
        end,
        desc = 'Goto Definition',
      },
      {
        'gD',
        function()
          Snacks.picker.lsp_declarations()
        end,
        desc = 'Goto Declaration',
      },
      {
        'gr',
        function()
          Snacks.picker.lsp_references()
        end,
        nowait = true,
        desc = 'References',
      },
      {
        'gI',
        function()
          Snacks.picker.lsp_implementations()
        end,
        desc = 'Goto Implementation',
      },
      {
        'gy',
        function()
          Snacks.picker.lsp_type_definitions()
        end,
        desc = 'Goto Type Definition',
      },
      {
        'gai',
        function()
          Snacks.picker.lsp_incoming_calls()
        end,
        desc = 'Calls Incoming',
      },
      {
        'gao',
        function()
          Snacks.picker.lsp_outgoing_calls()
        end,
        desc = 'Calls Outgoing',
      },
      {
        '<leader>ss',
        function()
          Snacks.picker.lsp_symbols()
        end,
        desc = 'LSP Symbols',
      },
      {
        '<leader>sS',
        function()
          Snacks.picker.lsp_workspace_symbols()
        end,
        desc = 'LSP Workspace Symbols',
      },
      -- Other
      {
        '<leader>.',
        function()
          Snacks.scratch()
        end,
        desc = 'Toggle Scratch Buffer',
      },
      {
        '<leader>S',
        function()
          Snacks.scratch.select()
        end,
        desc = 'Select Scratch Buffer',
      },
      {
        '<leader>un',
        function()
          Snacks.notifier.hide()
        end,
        desc = 'Dismiss All Notifications',
      },
      {
        '<leader>bd',
        function()
          Snacks.bufdelete()
        end,
        desc = 'Delete Buffer',
      },
      {
        '<leader>cR',
        function()
          Snacks.rename.rename_file()
        end,
        desc = 'Rename File',
      },
      {
        '<leader>gB',
        function()
          Snacks.gitbrowse()
        end,
        desc = 'Git Browse',
        mode = { 'n', 'v' },
      },
      {
        '<leader>gg',
        function()
          Snacks.lazygit()
        end,
        desc = 'Lazygit',
      },
      {
        '<c-`>',
        function()
          Snacks.terminal()
        end,
        desc = 'Toggle Terminal',
      },
      {
        ']]',
        function()
          Snacks.words.jump(vim.v.count1)
        end,
        desc = 'Next Reference',
        mode = { 'n', 't' },
      },
      {
        '[[',
        function()
          Snacks.words.jump(-vim.v.count1)
        end,
        desc = 'Prev Reference',
        mode = { 'n', 't' },
      },
    },
    init = function()
      vim.api.nvim_create_autocmd('User', {
        pattern = 'VeryLazy',
        callback = function()
          -- Setup some globals for debugging (lazy-loaded)
          _G.dd = function(...)
            Snacks.debug.inspect(...)
          end
          _G.bt = function()
            Snacks.debug.backtrace()
          end

          -- Override print to use snacks for `:=` command
          if vim.fn.has 'nvim-0.11' == 1 then
            ---@diagnostic disable-next-line: duplicate-set-field
            vim._print = function(_, ...)
              dd(...)
            end
          else
            vim.print = _G.dd
          end

          -- Lsp progress notifier
          ---@type table<number, {token:lsp.ProgressToken, msg:string, done:boolean}[]>
          local progress = vim.defaulttable()
          vim.api.nvim_create_autocmd('LspProgress', {
            ---@param ev {data: {client_id: integer, params: lsp.ProgressParams}}
            callback = function(ev)
              local client = vim.lsp.get_client_by_id(ev.data.client_id)
              local value = ev.data.params.value --[[@as {percentage?: number, title?: string, message?: string, kind: "begin" | "report" | "end"}]]
              if not client or type(value) ~= 'table' then
                return
              end
              local p = progress[client.id]

              for i = 1, #p + 1 do
                if i == #p + 1 or p[i].token == ev.data.params.token then
                  p[i] = {
                    token = ev.data.params.token,
                    msg = ('[%3d%%] %s%s'):format(
                      value.kind == 'end' and 100 or value.percentage or 100,
                      value.title or '',
                      value.message and (' **%s**'):format(value.message) or ''
                    ),
                    done = value.kind == 'end',
                  }
                  break
                end
              end

              local msg = {} ---@type string[]
              progress[client.id] = vim.tbl_filter(function(v)
                return table.insert(msg, v.msg) or not v.done
              end, p)

              local spinner = { '⠋', '⠙', '⠹', '⠸', '⠼', '⠴', '⠦', '⠧', '⠇', '⠏' }
              vim.notify(table.concat(msg, '\n'), 'info', {
                id = 'lsp_progress',
                title = client.name,
                opts = function(notif)
                  notif.icon = #progress[client.id] == 0 and ' ' or spinner[math.floor(vim.uv.hrtime() / (1e6 * 80)) % #spinner + 1]
                end,
              })
            end,
          })

          -- Create some toggle mappings
          Snacks.toggle.option('spell', { name = 'Spelling' }):map '<leader>ts'
          Snacks.toggle.option('wrap', { name = 'Wrap' }):map '<leader>tw'
          Snacks.toggle.option('relativenumber', { name = 'Relative Number' }):map '<leader>tL'
          Snacks.toggle.option('background', { off = 'light', on = 'dark', name = 'Dark Background' }):map '<leader>tb'
          Snacks.toggle.option('conceallevel', { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2, name = 'Conceal Level' }):map '<leader>tc'
          Snacks.toggle.line_number():map '<leader>tl'
          Snacks.toggle.diagnostics():map '<leader>td'
          Snacks.toggle.treesitter():map '<leader>uT'
          Snacks.toggle.inlay_hints():map '<leader>th'
          Snacks.toggle.indent():map '<leader>ti'
          Snacks.toggle.dim():map '<leader>tD'
          Snacks.toggle.zen():map '<leader>tz'
          Snacks.toggle.zoom():map '<leader>tZ'
          Snacks.toggle.animate():map '<leader>ta'

          Snacks.toggle
            .new({
              id = 'render_mardown',
              name = 'Render Markdown',
              get = function()
                return require('render-markdown').get()
              end,
              set = function(state)
                require('render-markdown').set(state)
              end,
            })
            :map '<leader>tm'
        end,
      })
    end,
  },
}
