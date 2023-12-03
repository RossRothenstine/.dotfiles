#!/usr/bin/env bash

# Install VSCode extensions
# https://code.visualstudio.com/docs/editor/extension-gallery#_command-line-extension-management

if [[ ! -x "$(command -v code)" ]]; then
	echo "VSCode is not installed"
	exit 1
fi

EXTENSIONS=(
	"ms-vscode.cpptools"
	"ms-vscode.cpptools-themes"
	"ms-dotnettools.csharp"
	"neikeq.godot-csharp-vscode"
	"llvm-vs-code-extensions.vscode-clangd"
	"twxs.cmake"
	"ms-vscode.cmake-tools"
	"vadimcn.vscode-lldb"
	"github.copilot"
	"github.codespaces"
	"github.copilot-chat"
	"github.copilot-labs"
	"eamodio.gitlens"
	"golang.go"
	"ms-vscode.mono-debug"
	"esbenp.prettier-vscode"
	"vscodevim.vim"
	"ms-python.python"
	"ms-python.vscode-pylance"
	"ms-toolsai.jupyter"
	"redhat.vscode-yaml"
	"visualstudiotoolsforunity.vstuc"
)

for extension in "${EXTENSIONS[@]}"; do
	code --install-extension "$extension" || true
done

