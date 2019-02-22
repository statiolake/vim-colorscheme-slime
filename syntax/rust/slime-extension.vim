" Rust がロードされていないときは読まない
if !exists("b:current_syntax") || b:current_syntax != "rust"
    finish
endif

" pub をアクセス指定子に
syn keyword rustAccess pub

syn keyword rustMutability mut
syn keyword rustReferencePattern ref
syn keyword rustDyn dyn

syn keyword rustDeclarator const
syn keyword rustDeclarator static
syn keyword rustDeclarator let

syn keyword rustStatement return 

syn keyword rustPrimitiveType i8 i16 i32 i64 i128 isize u8 u16 u64 u128 char usize str bool f32 f64

syn clear rustIdentifier

syn match rustType /\<\u\(\a\|\d\)*\>/ nextgroup=rustGenerics,rustImplFor skipwhite skipempty
syn match rustConstantIdentifier /\<\u\(\u\|_\)*\>/
syn match rustType /<\@<=\u>\@=/

syn region rustGenerics start="<" end=">" nextgroup=rustImplFor contains=rustGenericsTypeParameters,rustIdentifier,rustDyn,rustLifetime contained
syn match rustGenericsTypeParameters /\<\u\(\a\|\d\)*\>/ contained
syn keyword rustImplFor for contained

syn match rustStruct /\(struct\s\+\)\@<=\u[\a\d]*\>/

syn clear rustEnum
syn clear rustTrait
syn clear rustEnumVariant
syn match rustEnum /\(enum\s\+\)\@<=\u\w*\>/ nextgroup=rustEnumDefinition skipwhite skipempty
syn region rustEnumDefinition start="{" end="}" contains=rustEnumVariant contained
syn match rustEnumVariant /\<\u\(\a\|\d\)*\>\ze\((.*)\|{.*}\)\?,/ contained
syn match rustEnumVariant /\(\<\u\(\a\|\d\)*\>::\)\@<=\<\u\(\a\|\d\)*\>/
syn match rustEnumVariant /\<\(Ok\|Err\|Some\|None\)\>/

syn match rustType /\(Output\|Item\)/

syn keyword rustImpl impl nextgroup=rustGenerics

syn match rustIdentifier /\(\l\|_\)\+\>\(\s*(\)\@!/

syn match rustDotOperator /\./
syn match rustComma /,/
syn match rustSemicolon /;/

syn match rustLifetime /'\w\+\>'\@!/

syn match rustPathStart /\(\l\|_\)+\(::\)\@=/

syn match rustMacro /\(\l\|_\)\+\s*!/

hi def link rustPrimitiveType PrimitiveType
hi def link rustEnum rustType
hi def link rustStruct rustType
hi def link rustGenericsTypeParameters rustType
hi def link rustDotOperator rustOperator
hi def link rustMacro SpecialIdentifier

hi def link rustAccess Access
hi def link rustConstantIdentifier Identifier
hi def link rustImplFor rustDeclarator
hi def link rustImpl rustDeclarator
hi def link rustDeclarator Declarator

hi def link rustDyn Keyword

hi def link rustStatement Statement

hi def link rustPathStart SpecialIdentifier
