" Slime --- port of VSCode Slime theme.

let colors_name = "slime"
set background=dark
set termguicolors

hi! clear

" テキスト
"--------------------------------------------------------------------------------
" 通常
hi Normal guifg=#e1e2de guibg=#24292b gui=none

" Conceal
hi! link Conceal Normal

" カーソル行
hi CursorLine guifg=NONE guibg=#293031 gui=none

" EOF以降の~など
hi! link NonText Ignore

" コメント
hi Comment guifg=#7c8280 guibg=NONE gui=none
hi DocComment guifg=#a4aaa8 guibg=NONE gui=none

" 命令、分岐
hi Statement guifg=#c5a46f guibg=NONE gui=none
hi BlockStatement guifg=#d8d29a guibg=NONE gui=none

" if, not
hi! link Conditional BlockStatement

" for
hi! link Repeat BlockStatement

" try
hi! link Exception BlockStatement

" 関数、識別子
hi Identifier guifg=#be9296 guibg=NONE gui=none

" プリプロセッサメソッド
hi PreProc guifg=#d8d29a guibg=NONE gui=none

" 型 (クラス、構造体)
hi Type guifg=#8fc4ce guibg=NONE gui=none

" 定数(文字列、文字、数、Boolean)
hi Constant guifg=#8caec1 guibg=NONE gui=none

" 特殊記号
hi Special guifg=#d88f56 guibg=NONE gui=none
hi! link SpecialKey Ignore

" 無視する系
hi Ignore guifg=#444a48 guibg=NONE gui=none

" テキスト状態
"--------------------------------------------------------------------------------
" アクティブ選択範囲
hi Visual guifg=NONE guibg=#3f4b4b gui=none

" 非アクティブな選択範囲
hi! link VisualNOS Visual

" 検索文字列
hi Search guifg=NONE guibg=#324031 gui=none

" インクリメンタル中の検索文字列
hi IncSearch guifg=NONE guibg=#587c71 gui=none

" 折りたたまれた行
hi! link Folded Normal

" 折畳表示カラム
hi! link FoldColumn Normal

" diff
"--------------------------------------------------------------------------------
" 追加された行
hi DiffAdd guifg=NONE guibg=#3f4b38 gui=none

" 削除された行
hi DiffDelete guifg=NONE guibg=#502122 gui=none

" 変更されたテキスト
hi DiffText guifg=NONE guibg=#668C8C gui=none

" 変更された行
hi DiffChange guifg=NONE guibg=#415959 gui=none

 
" ポップアップメニュー
"--------------------------------------------------------------------------------
" 通常の項目
hi Pmenu guifg=fg guibg=#2d3736 gui=none

" 選択されている項目
hi PmenuSel guifg=fg guibg=#405c50 gui=none

" スクロールバー
hi PmenuSbar guifg=fg guibg=#2d3736 gui=none

" スクロールバーのツマミ部分
hi PmenuThumb guifg=fg guibg=#525454 gui=none


" その他
"--------------------------------------------------------------------------------
" カーソル
hi Cursor guifg=NONE guibg=NONE gui=inverse

" 行番号
hi LineNr guifg=#484d4e guibg=NONE gui=none

" カーソル行番号
hi CursorLineNr guifg=#626a6a guibg=NONE gui=none

" マッチする括弧
hi MatchParen guifg=NONE guibg=#161919 gui=underline

" 垂直分割したウィンドウの区切りとなる桁
hi VertSplit guifg=#444444 guibg=bg gui=none

" Todo
hi Todo guifg=fg guibg=#33424b gui=none

" サインの列
hi! link SignColumn Normal

" QuickFix の現在行
hi! link QuickFixLine CursorLine

" タイトルやタブ番号
hi! link Title Special

" ステータスライン
"--------------------------------------------------------------------------------
" アクティブなステータスライン
hi StatusLine guifg=#7c8280 guibg=#282e2f gui=bold

" 非アクティブなステータスライン
hi StatusLineNC guifg=#7c8280 guibg=#282e2f gui=none

" プロンプトメッセージ
hi Question guifg=#d88f56 guibg=NONE gui=none

" '-- INSERT --' メッセージ
hi! link ModeMsg Normal

" '-- More --' メッセージ
hi! link MoreMsg Normal

" 警告メッセージ
hi WarningMsg guifg=#d8d29a guibg=NONE gui=none

" エラーメッセージ
hi ErrorMsg guifg=#f44747 guibg=NONE gui=none

" タブライン
"--------------------------------------------------------------------------------
" 何もないところ
hi TabLineFill guifg=NONE guibg=#282e2f gui=none

" インアクティブなタブ
hi! link TabLine TabLineFill

" アクティブなタブ
hi TabLineSel guifg=NONE guibg=#24292a gui=bold

"================================================================================
" プラグイン
"================================================================================
" GitGutter
"--------------------------------------------------------------------------------
hi GitGutterAdd guifg=#587c0c guibg=NONE gui=none
hi GitGutterChange guifg=#0c7d9d guibg=NONE gui=none
hi GitGutterRemove guifg=#94151b guibg=NONE gui=none

"================================================================================
" 言語ごとの設定
"================================================================================
"--------------------------------------------------------------------------------
" 共通ハイライトグループ
"--------------------------------------------------------------------------------
" キーワード
"--------------------------------------------------------------------------------
hi Keyword guifg=#d88f56 guibg=NONE gui=none
hi Mutability guifg=#ab9b67 guibg=NONE gui=none

" 型
"--------------------------------------------------------------------------------
hi PrimitiveType guifg=#c8ba7c guibg=NONE gui=none
hi SpecialPrimitiveType guifg=#e6ce64 guibg=NONE gui=none

" リテラル
"--------------------------------------------------------------------------------
hi String guifg=#8caec1 guibg=NONE gui=none
hi Number guifg=#9876aa guibg=NONE gui=none
hi Boolean guifg=#ab6767 guibg=NONE gui=none
hi InterpolationBracket guifg=#b4ce84 guibg=NONE gui=none

" Identifier
"--------------------------------------------------------------------------------
hi Variable guifg=#be9296 guibg=NONE gui=none
hi Function guifg=#a0c080 guibg=NONE gui=none
" this や self など
hi SpecialIdentifier guifg=#e6dda8 guibg=NONE gui=none
" null や undefined など
hi NullIdentifier guifg=#ab6767 guibg=NONE gui=none

" アクセス指定子
"--------------------------------------------------------------------------------
hi Access guifg=#ab9b67 guibg=NONE gui=none

" class, function, fn, let, var, val, const, static などの宣言
"--------------------------------------------------------------------------------
hi! link Declarator Keyword

" オペレータ
"--------------------------------------------------------------------------------
hi Operator guifg=#b4b4b4 guibg=NONE gui=none
hi! link Delimiter Operator

"--------------------------------------------------------------------------------
" Help
"--------------------------------------------------------------------------------
hi! link helpSectionDelim Comment

"--------------------------------------------------------------------------------
" VimScript
"--------------------------------------------------------------------------------
hi! link vimGroup Variable
hi! link vimHiAttrib SpecialIdentifier
hi! link vimHiTerm Variable
hi! link vimFunction Function
hi! link vimUserFunc Function
hi! link vimCommand Declarator
hi! link vimIsCommand Keyword
hi! link vimNotFunc Conditional

"--------------------------------------------------------------------------------
" Rust
"--------------------------------------------------------------------------------
hi! link rustSelf SpecialIdentifier
hi! link rustQuestionMark Operator
hi! link rustSigil Operator
hi! link rustComma Operator
hi! link rustSemicolon Operator
hi! link rustEnumVariant Identifier
hi! link rustLifetime Mutability
hi! link rustMutability Mutability
hi! link rustReferencePattern Mutability

"--------------------------------------------------------------------------------
" TypeScript
"--------------------------------------------------------------------------------
hi! link typescriptStorageClass Declarator
hi! link typescriptFuncKeyword Declarator
hi! link typescriptIdentifier Identifier
hi! link typescriptLabel Access
hi! link typescriptParens Operator
hi! link typescriptBraces Operator
hi! link typescriptEndColons Operator
hi! link typescriptLogicSymbols Operator
hi! link typescriptInterpolationDelimiter InterpolationBracket
hi! link typescriptDocComment DocComment

"--------------------------------------------------------------------------------
" Vim
"--------------------------------------------------------------------------------
hi! link Directory Function

"--------------------------------------------------------------------------------
" NERDTree
"--------------------------------------------------------------------------------
hi! link NERDTreeOpenable Comment
hi! link NERDTreeClosable Comment
hi! link NERDTreeCWD Title
hi! link NERDTreeDir Function
hi! link NERDTreeFile Identifier
hi! link NERDTreeDirSlash Comment
hi! link NERDTreeFlags Comment
hi! link NERDTreeBookMark Statement

"--------------------------------------------------------------------------------
" ALE
"--------------------------------------------------------------------------------
hi ALEErrorLine guifg=NONE guibg=#2d1314
hi ALEError guifg=NONE guibg=NONE gui=undercurl
hi ALEErrorSign guifg=fg guibg=#685354 gui=none

hi ALEWarningLine guifg=NONE guibg=#233030
hi ALEWarning guifg=NONE guibg=NONE gui=undercurl guisp=#0daeaf
