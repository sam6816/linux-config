" Comment
syn region Grey 		start="/\*" end="\*/"
syntax sync minlines=24

" Strings 
syn match Darkcyan 	/".\{-}"/
syn match Darkcyan 	/'.\{-}'/


" Preprocessor
" #if etc.
syn match yellow	 	/#\s*if[n]*\(def\)*\s\w*/
syn match Brown	  	/#else\|#endif/

syn match Brown 		/#\s*define/
syn match Brown 		/#\s*include/
" include-<file>
syn match DarkBlue			/<\f\+\.h>/

"hex
syn match Blue			/0x\x\+/ms=s+2



" type specifiers
syn keyword Green		 	struct enum union
syn keyword Darkgreen 	int char void bool signed unsigned short long float double

" type qualifiers
syn keyword Darkgreen 	const volatile

" storage class spec.
syn keyword Darkgreen 	extern static typedef auto register

" other
syn keyword Darkgreen 	inline asmlinkage



" syn keyword Green 	sizeof  

syn keyword Yellow 	if else for while do 
syn keyword Yellow  	switch case default
syn keyword Yellow	sizeof 
syn keyword Yellow	NULL 

" C stdlib
syn match Yellow 		/str\(len\|cpy\|[n]*cmp\)/

" jump
syn keyword darkRed 	 goto break continue
syn keyword DarkRed 	return 
syn match Yellow		/^\s*\w*:/me=e-1
