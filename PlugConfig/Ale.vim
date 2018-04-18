let g:ale_linters = {
			\   'sh' : ['shellcheck'],
			\   'vim' : ['vint'],
    		\   'html' : ['tidy'],
			\   'python' : ['pylint'],
			\   'markdown' : ['mdl'],
			\   'javascript' : ['eslint'],
			\}

let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
let g:ale_echo_msg_format = '[#%linter%#] %s [%severity%]'
let g:ale_echo_msg_error_str = '✹ Error'
let g:ale_echo_msg_warning_str = '⚠ Warning'
let g:ale_statusline_format = ['Ⓔ •%d ', 'Ⓦ •%d ', ' ✔ •OK ']
