; extends

(call_expression
  function: (parenthesized_expression
    (identifier) @type)
  (#lua-match? @type "^[uisbf]%d+$")
  (#set! priority 125))

(sizeof_expression
  value: (parenthesized_expression
    (identifier) @type)
  (#lua-match? @type "^[uisbf]%d+$")
  (#set! priority 125))


