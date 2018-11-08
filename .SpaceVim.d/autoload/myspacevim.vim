func! myspacevim#before() abort
    set wrap
    "逗号后加上空格
    inoremap , ,<Space>
    "等号左右空格
    inoremap = <Space>=<Space>
endf
