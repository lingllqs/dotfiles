vim9script

syntax enable # 自定义高亮仍然生效, syntax on 则会被默认配色覆盖

# 语法高亮
# source "./syntax/tokyonight.vim"

g:mapleader = " "
g:maplocalleader = " "

#########################
######## OPTIONS ########
#########################

def SetOptionsConditional()
	var basic_options = [
		[&autoindent, 		true],
		[&smartindent, 		true],
		[&hlsearch, 		true],
		[&number, 		true],
		[&ttimeout, 		true],
		[&ttimeoutlen, 		100],
		[&mouse, 		"a"],
 		[&display, 		"truncate"],
		[&undofile, 		true],
		[&statusline, 		"\ %f\ %(%m%r%h%S%)%=%(%y%)%([%c,%-l],\ %)"],
	]

	for settings in basic_options
		settings[0] = settings[1]
	endfor
enddef
augroup SetOptions
	autocmd!
	autocmd FileType * SetOptionsConditional()
augroup END

nnoremap ; :
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-l> <C-w>l



nnoremap <Leader>bd :Bclose<CR>

nnoremap <Leader>e :Lexplore<CR>
g:netrw_winsize = 25

inoremap jk <Esc>
nnoremap <Esc> :nohl<CR>

##########################
######## AUTOCMDS ########
##########################

#    augroup RestoreCursor
#      autocmd!
#      autocmd BufReadPost *
#        \ var last_line = line("'\"") |
#        \   if last_line >= 1 && last_line <= line("$") && &filetype !~# 'commit'
#        \      && index(['xxd', 'gitrebase'], &filetype) == -1
#        \      && !&diff |
#        \     execute "normal! g`\"" |
#        \   endif
#    augroup END

def RestoreLastCursorPosition()
    var last_line = line("'\"")
    if last_line >= 1 && last_line <= line("$")
        && &filetype !~# 'commit'
        && index(['xxd', 'gitrebase'], &filetype) == -1
        && !&diff
        execute "normal! g`\""
    endif
enddef

augroup RestoreCursor
    autocmd!
    autocmd BufReadPost * RestoreLastCursorPosition()
augroup END

##########################
######## FUNCTION ########
##########################

def SmartCloseBufferOrExit()
    # 获取当前窗口数量
    var window_count = winnr('$')
    
    if window_count == 1
        # 检查buffer数量
        var listed_buffers = getbufinfo()->filter((idx, val) => val.listed)
        if len(listed_buffers) == 1
            # 如果是最后一个buffer，退出vim
            quitall
        else
            # 否则只删除当前buffer
            bdelete
        endif
    else
        # 如果有多个窗口，只关闭当前窗口
        close
    endif
enddef
# 创建命令
command! Bclose call SmartCloseBufferOrExit()
