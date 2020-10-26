for x = 0, 10 do
    chim.command("edit.insert", "uiae\n")
end
print("lua config")

chim.map("normal", "w", "edit.insert", "word\n")
chim.map("normal", "x", "buffer.delete_right")
chim.map("normal", "u", "buffer.undo")
chim.map("normal", "U", "buffer.redo")
-- chim.map("command", "f{mov}", function(mov) print(mov) end)
-- chim.map("command", "f{mov}", function(mov) print(mov) end)
