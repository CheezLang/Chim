function main()
    -- error("uiae")
    -- host_func()

    local buff = new_buffer('uiae')
    
    buff:insert(13, 2, 'lol')
    buff:insert(13, 2, 'lol')
    buff:insert(13, 2, 'lol')
    buff:insert(13, 2, 'lol')
    buff:insert(13, 2) -- produces error, wrong number of arguments
    
    buff2 = new_buffer('xvlc')
    print('end')
end