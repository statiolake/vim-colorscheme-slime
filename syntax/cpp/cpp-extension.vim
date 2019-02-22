if !exists("b:current_syntax") || b:current_syntax != "cpp"
    finish
endif

syn keyword cppOperator new delete
