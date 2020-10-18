$install_dir = "D:\Program Files\chim"
if (-not (Test-Path $install_dir)) {
    New-Item -ItemType Directory -Path $install_dir
}

Copy-Item "../libraries/GLFW/glfw/lib/glfw3.dll" $install_dir -Force
Copy-Item "./fonts" $install_dir -Recurse -Force
Copy-Item "./bin/chim.exe" $install_dir -Force