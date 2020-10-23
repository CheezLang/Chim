[CmdletBinding()]
param ([Parameter(ValueFromRemainingArguments)] [string[]] $Passthrough)
&cheezc ./src/main.che --out ./bin --name chim --time --error-source --modules ../libraries/GLFW/glfw ../libraries/imgui/src ../libraries/stb_image/stb_image --subsystem windows --opt @Passthrough

$install_dir = "D:\Program Files\chim"
if (-not (Test-Path $install_dir)) {
    New-Item -ItemType Directory -Path $install_dir
}

Copy-Item "../libraries/GLFW/glfw/lib/glfw3.dll" $install_dir -Force
Copy-Item "./fonts" $install_dir -Recurse -Force
Copy-Item "./icons/icon.ico" $install_dir -Force
Copy-Item "./bin/chim.exe" $install_dir -Force