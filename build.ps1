[CmdletBinding()]
param ([Parameter(ValueFromRemainingArguments)] [string[]] $Passthrough)
Copy-Item "../libraries/GLFW/glfw/lib/glfw3.dll" "./bin" -Force
Copy-Item "./fonts" "./bin" -Recurse -Force
&cheezc ./src/main.che --out ./bin --name chim --time --error-source --modules ../libraries/GLFW/glfw ../libraries/imgui/src --subsystem console --opt --print-ast-analysed ./bin/int/ast.chea @Passthrough