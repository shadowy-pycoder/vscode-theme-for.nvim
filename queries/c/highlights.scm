; extends

(call_expression
  function: (parenthesized_expression
    (identifier) @type)
  (#lua-match? @type "^[uisb]%d+$")
  (#set! priority 125))

