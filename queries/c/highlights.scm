; extends

(call_expression
  function: (parenthesized_expression
    (identifier) @type)
  (#any-of? @type "u8" "u16" "u32" "u64" "i8" "i16" "i32" "i64" "s8" "s16" "s32" "s64" "b8" "b32" "f32" "f64")
  (#set! priority 130))

(sizeof_expression
  value: (parenthesized_expression
    (identifier) @type)
  (#any-of? @type "u8" "u16" "u32" "u64" "i8" "i16" "i32" "i64" "s8" "s16" "s32" "s64" "b8" "b32" "f32" "f64")
  (#set! priority 130))

(binary_expression
  left: (parenthesized_expression
    (identifier) @type)
  (#any-of? @type "u8" "u16" "u32" "u64" "i8" "i16" "i32" "i64" "s8" "s16" "s32" "s64" "b8" "b32" "f32" "f64")
  (#set! priority 130))

(call_expression
  function: (identifier) @_fn
  arguments: (argument_list
    .
    (identifier) @type)
  (#lua-match? @_fn "_alignof$")
  (#set! priority 130))
