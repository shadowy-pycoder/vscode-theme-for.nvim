; extends

((string
   (string_start) @string.prefix)
 (#match? @string.prefix "^[fFrRbBtT]{1,2}['\"]$")
 (#offset! @string.prefix 0 0 0 -1))

((string
   (string_start) @string.prefix)
 (#match? @string.prefix "^[fFrRbBtT]{1,2}['\"]{3}$")
 (#offset! @string.prefix 0 0 0 -3))

((function_definition
   "async" @async_func_keyword))

