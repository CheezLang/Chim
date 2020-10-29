
-- normal mode key bindings
do
    -- move commands
    chim.map("normal", "{Left}", "move.left")
    chim.map("normal", "{Right}", "move.right")
    chim.map("normal", "{Up}", "move.up")
    chim.map("normal", "{Down}", "move.down")
    chim.map("normal", "{Home}", "move.line_home")
    chim.map("normal", "{End}", "move.line_end")
    chim.map("normal", "{C Home}", "move.buffer_home")
    chim.map("normal", "{C End}", "move.buffer_end")
    chim.map("normal", "{PageUp}", "move.page_up")
    chim.map("normal", "{PageDown}", "move.page_down")
    chim.map("normal", "{S Left}", "move.select_left")
    chim.map("normal", "{S Right}", "move.select_right")
    chim.map("normal", "{S Up}", "move.select_up")
    chim.map("normal", "{S Down}", "move.select_down")
    chim.map("normal", "{S Home}", "move.select_line_home")
    chim.map("normal", "{S End}", "move.select_line_end")
    chim.map("normal", "{CS Home}", "move.select_buffer_home")
    chim.map("normal", "{CS End}", "move.select_buffer_end")
    chim.map("normal", "{S PageUp}", "move.select_page_up")
    chim.map("normal", "{S PageDown}", "move.select_page_down")
    chim.map("normal", "gl", "move.goto_line_absolute")
    chim.map("normal", "gt", "move.goto_line_relative_top")
    chim.map("normal", "f{char}", "move.goto_char")
    chim.map("normal", "F{char}", "move.goto_char_back")
    chim.map("normal", "t{char}", "move.go_before_char")
    chim.map("normal", "T{char}", "move.go_before_char_back")
    chim.map("normal", ",", "move.repeat")
    chim.map("normal", ";", "move.repeat_inv")
    -- alternative key bindings
    chim.map("normal", "gh", "move.buffer_home")
    chim.map("normal", "ge", "move.buffer_end")

    -- editor commands
    chim.map("normal", "{C Tab}", "editor.tab_next")
    chim.map("normal", "{CS Tab}", "editor.tab_prev")
    chim.map("normal", "{C s}", "editor.buffer_save")
    chim.map("normal", "i", "editor.mode_insert")
    chim.map("normal", "{C r}", "editor.activate_command_line")

    -- buffer commands
    chim.map("normal", "{Backspace}", "buffer.delete_left")
    chim.map("normal", "{Delete}", "buffer.delete_right")
    chim.map("normal", "dd", "buffer.delete_line")
    chim.map("normal", "{Tab}", "buffer.indent_line")
    chim.map("normal", "{S Tab}", "buffer.deindent_line")
    chim.map("normal", "{C z}", "buffer.undo")
    chim.map("normal", "{C y}", "buffer.redo")
    chim.map("normal", "{C c}", "buffer.copy")
    chim.map("normal", "{C v}", "buffer.paste")

    -- view commands
    chim.map("normal", "{SA Up}", "view.add_cursor_above")
    chim.map("normal", "{SA Down}", "view.add_cursor_below")
end

-- insert mode key bindings
do
    -- move commands
    chim.map("insert", "{Left}", "move.left")
    chim.map("insert", "{Right}", "move.right")
    chim.map("insert", "{Up}", "move.up")
    chim.map("insert", "{Down}", "move.down")
    chim.map("insert", "{Home}", "move.line_home")
    chim.map("insert", "{End}", "move.line_end")
    chim.map("insert", "{C Home}", "move.buffer_home")
    chim.map("insert", "{C End}", "move.buffer_end")
    chim.map("insert", "{PageUp}", "move.page_up")
    chim.map("insert", "{PageDown}", "move.page_down")
    chim.map("insert", "{S Left}", "move.select_left")
    chim.map("insert", "{S Right}", "move.select_right")
    chim.map("insert", "{S Up}", "move.select_up")
    chim.map("insert", "{S Down}", "move.select_down")
    chim.map("insert", "{S Home}", "move.select_line_home")
    chim.map("insert", "{S End}", "move.select_line_end")
    chim.map("insert", "{CS Home}", "move.select_buffer_home")
    chim.map("insert", "{CS End}", "move.select_buffer_end")
    chim.map("insert", "{S PageUp}", "move.select_page_up")
    chim.map("insert", "{S PageDown}", "move.select_page_down")
    
    -- editor commands
    chim.map("insert", "{C Tab}", "editor.tab_next")
    chim.map("insert", "{Tab}, .Control or .Shift", "editor.tab_prev")
    chim.map("insert", "{C s}", "editor.buffer_save")
    chim.map("insert", "{C e}", "editor.mode_normal")
    chim.map("insert", "{Escape}", "editor.mode_normal")
    chim.map("insert", "{C r}", "editor.activate_command_line")
    
    -- buffer commands
    chim.map("insert", "{Backspace}", "buffer.delete_left")
    chim.map("insert", "{Delete}", "buffer.delete_right")
    chim.map("insert", "{Tab}", "buffer.insert_tab")
    chim.map("insert", "{C z}", "buffer.undo")
    chim.map("insert", "{C y}", "buffer.redo")
    chim.map("insert", "{C c}", "buffer.copy")
    chim.map("insert", "{C v}", "buffer.paste")
    chim.map("insert", "{char}", "buffer.insert_char")
    chim.map("insert", "{S Space}", "buffer.insert", " ")
    chim.map("insert", "{Enter}", "buffer.insert", "\n")
    
    -- view commands
    chim.map("insert", "{SA Up}", "view.add_cursor_above")
    chim.map("insert", "{SA Down}", "view.add_cursor_below")
end

-- command mode key bindings
do
    chim.map_language("command", "insert", "{S Enter}", "buffer.insert", "\n")
    chim.map_language("command", "insert", "{Enter}", "editor.execute_command")
    chim.map_language("command", "normal", "{Enter}", "editor.execute_command")
    chim.map_language("command", "normal", "{Escape}", "editor.cancel_command")

    chim.map_language("cheez", "normal", "{S Enter}", function(count)
        print("only for cheez")
    end)
end

function lua_function(text)
    print("Cheez->Lua: " .. text)
end