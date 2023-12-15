function _G.dapRunConfigWithArgs()
        local dap = require('dap')
        local ft = vim.bo.filetype
        if ft == "" then
            print("Filetype option is required to determine which dap configs are available")
            return
        end
        local configs = dap.configurations[ft]
        if configs == nil then
            print("Filetype \"" .. ft .. "\" has no dap configs")
            return
        end
        local mConfig = nil
        vim.ui.select(
            configs,
            {
                prompt = "Select config to run: ",
                format_item = function(config)
                    return config.name
                end
            },
            function(config)
                mConfig = config
            end
        )
    
        -- redraw to make ui selector disappear
        vim.api.nvim_command("redraw")
    
        if mConfig == nil then
            return
        end
        vim.ui.input(
            {
                prompt = mConfig.name .." - with args: ",
            },
            function(input)
                if input == nil then
                    return
                end
                local args = vim.split(input, ' ', true)
                mConfig.args = args
                dap.run(mConfig)
            end
        )
	end

require('mason-tool-installer').setup {

  -- a list of all tools you want to ensure are installed upon
  -- start; they should be the names Mason uses for each tool
  ensure_installed = {

    -- you can pin a tool to a particular version
    --{ 'golangci-lint', version = 'v1.47.0' },

    -- you can turn off/on auto_update per tool
    --{ 'bash-language-server', auto_update = true },

    'lua-language-server',
    'vim-language-server',
    'clangd',
    'phpactor',
    'pyright'
  },

  -- if set to true this will check each tool for updates. If updates
  -- are available the tool will be updated. This setting does not
  -- affect :MasonToolsUpdate or :MasonToolsInstall.
  -- Default: false
  auto_update = true,

  -- automatically install / update on startup. If set to false nothing
  -- will happen on startup. You can use :MasonToolsInstall or
  -- :MasonToolsUpdate to install tools and check for updates.
  -- Default: true
  run_on_start = true,

  -- set a delay (in ms) before the installation starts. This is only
  -- effective if run_on_start is set to true.
  -- e.g.: 5000 = 5 second delay, 10000 = 10 second delay, etc...
  -- Default: 0
  start_delay = 3000, -- 3 second delay

  -- Only attempt to install if 'debounce_hours' number of hours has
  -- elapsed since the last time Neovim was started. This stores a
  -- timestamp in a file named stdpath('data')/mason-tool-installer-debounce.
  -- This is only relevant when you are using 'run_on_start'. It has no
  -- effect when running manually via ':MasonToolsInstall' etc....
  -- Default: nil
  debounce_hours = 5, -- at least 5 hours between attempts to install/update
}
require'nvim-autopairs'.setup()
require'gitsigns'.setup()
require'mason'.setup()
require'mason-nvim-dap'.setup()
require'mason-lspconfig'.setup()
require'nvim_comment'.setup()
