if !exists("b:current_syntax") || b:current_syntax != "typescript"
    finish
endif

syn keyword typescriptThis this
syn keyword typescriptPrimitiveType string number boolean any unknown
syn keyword typescriptSpecialPrimitiveType null undefined
syn keyword typescriptAccess private public
syn keyword typescriptStatic static

syn match typescriptIdentifier /\<[^ 1-9\[\]{}()<>+\-*/=;:@\\][^ \[\]{}()<>+\-*/=;:@\\]*\>/
syn match typescriptFunction /\<[^ 1-9\[\]{}()<>+\-*/=;:@\\][^ \[\]{}()<>+\-*/=;:@\\]*\>\s*(\@=/

syn match typescriptQuestion /?/
syn match typescriptDot /\./
syn match typescriptColon /:/
syn match typescriptType /\<\(\u\l*\)\+\>/
syn clear typescriptInterpolation
syn region typescriptInterpolation matchgroup=typescriptInterpolationDelimiter start="${" end="}" contains=@typescriptExpression,typescriptThis,typescriptFunction contained

hi def link typescriptType Type
hi def link typescriptQuestion Operator
hi def link typescriptDot Operator
hi def link typescriptColon Operator
hi def link typescriptPrimitiveType PrimitiveType
hi def link typescriptThis SpecialIdentifier
hi def link typescriptFunction Function
hi def link typescriptIdentifier Identifier
hi def link typescriptSpecialPrimitiveType SpecialPrimitiveType
hi def link typescriptAccess Access
hi def link typescriptStatic Access
hi def link typescriptDocComment DocComment
