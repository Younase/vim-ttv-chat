"===============================================
"vim_ttv_chat.vim
"twitch.tv chat integration in vim
"===============================================
let g:ttvchat_open = 0
let g:ttvchat_channel = get(g:, 'ttvchat_channel', "maadlou")

function! s:TtvchatOpen()
    let g:ttvchat_open = 1
    botright vsplit
    let g:ttvchat_winid = win_getid()
    vertical resize 50
    exec "term ++curwin twitch-chat-cli --channels " . g:ttvchat_channel
endfunction

function! s:TtvchatClose()
    let g:ttvchat_open = 0
    call win_gotoid(g:ttvchat_winid)
    bd!
endfunction

function! g:TtvchatToggle()
    if g:ttvchat_open == 0
        call s:TtvchatOpen()
        return
    endif
    call s:TtvchatClose()
endfunction




command! TtvchatToggle call TtvchatToggle() 
