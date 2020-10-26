function main()
    -- error("uiae")
    -- host_func()

    local buff = new_buffer('Hello')
    
    buff:insert(13, 2, ' world')
    buff:insert(13, 2, ', ')
    buff:insert(13, 2, 'wassup')
    buff:insert(13, 2, '?')
    -- buff:insert(13, 2) -- produces error, wrong number of arguments
    
    for x = 1, 20 do
        print(buff[-x])
    end
    buff2 = new_buffer('xvlc')
    print('end')
end