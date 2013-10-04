" tab stuff
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" show line numbers
set number

" display status line
set laststatus=2

" enable case-insensitive searching
set ic

" turn off hex/octal detection when dealing with numbers
set nrformats=

" setup bash-link tab-completion
set wildmode=longest,list

" window management
nnoremap <C-n> <C-w>v<C-w>l
nnoremap <tab><tab> <c-w><c-w>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" command aliases
cnoreabbrev Cq ConqueTermVSplit
cnoreabbrev cq ConqueTermVSplit
cnoreabbrev CQ ConqueTermVSplit
command Csh ConqueTermVSplit bash
command Cmysql ConqueTermVSplit mysql -p

" setup :Shell command to run passed shell command and display output in new window
" take from: http://vim.wikia.com/wiki/Display_output_of_shell_commands_in_new_window
" altered slightly (changed botright new to botright vnew)
command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline)
  echo a:cmdline
  let expanded_cmdline = a:cmdline
  for part in split(a:cmdline, ' ')
     if part[0] =~ '\v[%#<]'
        let expanded_part = fnameescape(expand(part))
        let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
     endif
  endfor
  botright vnew
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(1, 'You entered:    ' . a:cmdline)
  call setline(2, 'Expanded Form:  ' .expanded_cmdline)
  call setline(3,substitute(getline(2),'.','=','g'))
  execute '$read !'. expanded_cmdline
  setlocal nomodifiable
  1
endfunction

" start up pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" database settings for dbext
let g:dbext_default_type   = 'MYSQL'
let g:dbext_default_host = 'localhost'
let g:dbext_default_user = 'dlinnemeyer'
let g:dbext_default_window_use_horiz = 0 " Use vertical split
let g:dbext_default_window_width = 80

command Desc DescribeTableAskName
command Sel Select
command Sql DBExecSQL
command SqlX DBExecSQLTopX
