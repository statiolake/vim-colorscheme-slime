if !exists("b:current_syntax") || (b:current_syntax != "c" && b:current_syntax != "cpp")
    finish
endif

syn keyword cPrimitiveType int short long signed unsigned double float char
syn keyword cPrimitiveType ll ull

syn match cSemicolon /;/
syn match cColon /:/
syn match cComma /,/
syn match cDot /,/
syn match cArrow /->/
syn match cBrace /[(){}<>\[\]]/
syn match cOperator /[+\-=/*!\^\~&|]/

syn match cIdentifier /\<\a\w*\>/
syn match cCustomFunc /\<\a\w*\>\s*(\@=/

syn region cComment matchgroup=cCommentStart start=+/\*+ end=+\*/+ extend fold contains=@cCommentGroup,cCommentStartError,cCommentString,cCharacter,cNumbersCom,cSpaceError,@Spell
syn region cDocComment matchgroup=cDocCommentStart start=+/\*\*+ end=+\*/+ extend fold contains=@cCommentGroup,cCommentStartError,cCommentString,cCharacter,cNumbersCom,cSpaceError,@Spell
syn region cCommentL start=+//+ skip=/\\$/ end=/$/ keepend contains=@cCommentGroup,cComment2String,cCharacter,cNumbersCom,cSpaceError,@Spell 
syn region cDocCommentL start=+///+ skip=/\\$/ end=/$/ keepend contains=@cCommentGroup,cComment2String,cCharacter,cNumbersCom,cSpaceError,@Spell 

hi def link cIdentifier Identifier
hi def link cPrimitiveType PrimitiveType
hi def link cSemicolon Operator
hi def link cColon Operator
hi def link cComma Operator
hi def link cDot Operator
hi def link cArrow Operator
hi def link cBrace Operator
hi def link cOperator Operator
hi def link cDocComment DocComment
hi def link cDocCommentStart DocComment
hi def link cDocCommentL DocComment
