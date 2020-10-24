[CmdletBinding()]
param ([Parameter(ValueFromRemainingArguments)] [string[]] $Passthrough)
Copy-Item "../libraries/GLFW/glfw/lib/glfw3.dll" "./bin" -Force
Copy-Item "./fonts" "./bin" -Recurse -Force
Copy-Item "./icons/icon.ico" "./bin" -Force
&cheezc ./src/main.che --out ./bin --name chim --time --error-source --modules ../libraries/lua/lua ../libraries/GLFW/glfw ../libraries/stb_image/stb_image ../libraries/imgui/src --subsystem console --print-ast-analysed ./bin/int/ast.chea --print-linker-args @Passthrough