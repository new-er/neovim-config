-- Define the shell and shell command flag
local shell = "powershell -NoLogo"
local shellcmdflag =
    '-ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues[\'Out-File:Encoding\']=\'utf8\';'

-- Define shell redirection and piping
local shellredir = '2>&1 | %{ "$_" } | Out-File %s; exit $LastExitCode'
local shellpipe = '2>&1 | %{ "$_" } | Tee-Object %s; exit $LastExitCode'

-- Set shellquote and shellxquote to empty strings (if you need them, set appropriate values)
local shellquote = ""
local shellxquote = ""

-- Set the options in Vim (use "vim.o" for global options or "vim.bo" for buffer-specific options)
vim.o.shell = shell
vim.o.shellcmdflag = shellcmdflag
vim.o.shellredir = shellredir
vim.o.shellpipe = shellpipe
vim.o.shellquote = shellquote
vim.o.shellxquote = shellxquote
