if has("gui_running")
	if has("gui_gtk2")
		set guifont=Mono\ 14
	elseif has("gui_win32")
		set guifont=Cascadia\ Mono\ Regular:h11
	endif
    set linespace=5
endif

"use WSL for windows shell"
if has("win32")
	"use forward slashes in all windows paths
	set shellslash

	" get rid of toolbar
	set guioptions-=T

    set shell=C:\Windows\WinSxS\amd64_microsoft-windows-lxss-wsl_31bf3856ad364e35_10.0.19041.488_none_60be8a5c2dce0ea7\wsl.exe
    set shellpipe=|
    set shellredir=>
    set shellcmdflag=
endif
