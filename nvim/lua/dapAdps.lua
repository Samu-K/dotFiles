local dap = require('dap')

dap.adapters.codelldb = {
	type = 'server',
	port = '${port}',
	executable = {
		command = '/home/samuk/.local/share/nvim/mason/bin/codelldb',
		args = {"--port", "${port}"},
	}
}
