" Language:	Vim help file
syn match darkblue	/".\{-}"/

" lines
syn match Red		"^===.*===$"
syn match darkred	"^---.*--$"

" Titles, tilde at end
syn match darkred	 "\s*\zs.\{-}\ze\s\=\~$" nextgroup=helpIgnore

" helpExample
syn region yellow 	matchgroup=black start=" >$" start="^>$" end="^[^ \t]"me=e-1 end="^<" 

" bar, star
syn match darkcyan	"\\\@<!|[#-)!+-~]\+|" contains=bar
syn match grey	"\*[#-)!+-~]\+\*\s"he=e-1 contains=star
syn match grey	"\*[#-)!+-~]\+\*$" contains=star
syn match star		contained "\*" conceal
syn match bar		contained "|" conceal

hi link bar Conceal
hi link star Black

syn match helpBacktick	contained "`" conceal

syn match helpNormal		"|.*====*|"
syn match helpNormal		"|||"
syn match helpNormal		":|vim:|"

syn match cyan		"\<Vim version [0-9][0-9.a-z]*"
syn match cyan		"VIM REFERENCE.*"

syn match green		"'[a-z]\{2,\}'"
syn match green		"'t_..'"

syn match helpCommand		"`[^` \t]\+`"hs=s+1,he=e-1 contains=helpBacktick
syn match helpCommand		"\(^\|[^a-z"[]\)\zs`[^`]\+`\ze\([^a-z\t."']\|$\)"hs=s+1,he=e-1 contains=helpBacktick

syn match helpGraphic		".* \ze`$" nextgroup=helpIgnore
syn match helpIgnore		"." contained conceal

syn match magenta		"{[-a-zA-Z0-9'"*+/:%#=[\]<>.,]\+}"
syn match magenta		"\s\[[-a-z^A-Z0-9_]\{2,}]"ms=s+1
syn match yellow		"<[-a-zA-Z0-9_]\+>"
syn match magenta		"\[range]"
syn match magenta		"\[line]"
syn match magenta		"\[count]"
syn match magenta		"\[offset]"
syn match magenta		"\[cmd]"
syn match magenta		"\[num]"
syn match magenta		"\[+num]"
syn match magenta		"\[-num]"
syn match magenta		"\[+cmd]"
syn match magenta		"\[++opt]"
syn match magenta		"\[arg]"
syn match magenta		"\[arguments]"
syn match magenta		"\[ident]"
syn match magenta		"\[addr]"
syn match magenta		"\[group]"
syn match yellow		"CTRL-"
syn region gray		start="{Vi[: ]" start="{not" start="{only" end="}" contains=helpLeadBlank,helpHyperTextJump









