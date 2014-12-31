syn case match

syn keyword protoType integer float string boolean
syn keyword protoArray array
syn keyword apiKey packet_type name payload desc

hi def link protoType Type
hi def link protoArray Typedef
hi def link apiKey Keyword

syn region protoBlock start="=$" end="^===" transparent fold keepend

syn keyword     protoTodo              contained TODO FIXME XXX BUG
syn cluster     protoCommentGroup      contains=protoTodo
syn region      protoComment           start="#" end="$" contains=@protoCommentGroup

hi def link protoComment Comment
hi def link protoTodo Todo
