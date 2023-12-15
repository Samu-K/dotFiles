local dap = require('dap')

dap.configurations.cpp = {
	{
		name = 'Launch file',
		type = 'codelldb',
		request = 'launch',
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. '/', 'file') end,
		cwd = '${workspaceFolder}',
		stopOnEntry = false,
		args={}
	},
}

dap.configurations.c = dap.configurations.cpp

dap.configurations.java = {
  {
    classPaths = {},
    javaExec = "/usr/bin/java",
    request = "launch",
    type = "java"
  },
}
