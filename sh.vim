" Comment, do not match parameter "$#"  
" linestart or space, then "#"
syn match Grey		/\(^\|\s\)#.*/ 


" Double qoutes, show expandimg vars
syn match Darkcyan /".\{-}"/ contains=White 

syn match Darkcyan /'.\{-}'/  

syn match White	/\$\w\+/ 	contained
syn match White	/\${.*}/ 	contained
syn match White	/\$(.*)/ 	contained
syn match White	/\$[\d#@]\+/ 	contained


syn keyword Green		if elif for in  case while until function 
syn match 	Green 	/()/

syn keyword DarkGreen	do	then else   
syn keyword Brown 	done fi esac

syn keyword Red		exit return break continue 

" Unix
syn keyword Brown	 switch_root  mount mountpoint modprobe tar mkdir rm cp mv ln touch cat grep gzip awk sed
syn keyword Magenta	 cpio ls find du df free make objdump

" pattern for case 
syn match Blue /^[^(]*)/me=e-1

" Built-ins
syn keyword Yellow 	printf pwd readonly shift shopt source echo test read cd local declare dirs
syn keyword Yellow 	eval mapfile read array kill let getopts hash fg bg exec set pushd popd
syn keyword Yellow   source builtin  time umask wait export






"""""""""""""""""""""""""""""""""""""
"syn region  here	start="EOF" end="^EOF" 
" $(...) Construct, *can* contain a lot 
"syn region dollar_c start="\$(" end=")" 	contained contains=unix 
"syn region dollar_c start="\${" end="}" 	contained 
"syn match Filename  /\i*\/\i*\.*\i*/ 
"syn match Filename  /[\i\*\.]*\/\S*\.*\S*/ 
