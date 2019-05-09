if exists("b:current_syntax")
	finish
endif

let b:current_syntax = "nf"

syn keyword nfKeywords process input output from into cpus memory time container publishDir set mode

syn keyword nfTypes file var

hi def link nfKeywords Keyword
hi def link nfTypes Function


syntax match nfComment "\v//.*$"
highlight link nfComment Comment

syntax region nfString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region nfString start=/\v'/ skip=/\v\\./ end=/\v'/
syntax region nfString start=/\v"""/ skip=/\v\\./ end=/\v"""/

highlight link nfString String
