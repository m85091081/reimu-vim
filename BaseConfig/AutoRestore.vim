autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   execute "normal! g`\"" |
			\ endif

autocmd BufReadPre *
			\   if getfsize(expand("%")) > 10000000 |
			\   syntax off |
			\   endif

au BufEnter * call MyLastWindow()
function! MyLastWindow()
	" if the window is quickfix/locationlist go on
	if &buftype=='quickfix' || &buftype == 'locationlist'
		" if this window is last on screen quit without warning
		if winbufnr(2) == -1
			quit!
		endif
	endif
endfunction
