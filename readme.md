# Hello World

Introduction to coding a game in Love2D.


## Installation

1. Clone this repository.
2. Install [Love2D](https://love2d.org/).
3. Add Love2D to `PATH` on windows: `C:\Program Files\LOVE\` (depends on how you installed it).
4. Install `makelove` with `pip3 install makelove` (with `makelove` you can build executables from Love2D projects).
5. Run this project with `love .` in the current folder.


## Commands

* `love .` -- run current directory with love2d
* `python -m makelove` -- run build tool [makelove](https://pypi.org/project/makelove/)


## VS Code 

### Shortcuts

* `Ctrl` + `Shift` + `B` -- run build task with `makelove`


### Required Plugins

* [Lua Language Server](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) by sumneko
* [vscode-lua-format](https://marketplace.visualstudio.com/items?itemName=Koihik.vscode-lua-format) by Koihik
* [Local Lua Debugger](https://marketplace.visualstudio.com/items?itemName=tomblind.local-lua-debugger-vscode) by Tom Blind


## Formatter

* I use https://github.com/Koihik/LuaFormatter as Lua formatter (via the VS Code plugin).
* Customize formatting via `lua-format.yaml` (see [config reference](https://github.com/Koihik/LuaFormatter/blob/master/docs/Style-Config.md)).


## References

* Setting up vscode to develop in Love2D: https://sheepolution.com/learn/book/bonus/vscode
