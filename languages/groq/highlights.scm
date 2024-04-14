(everything_expression) @operator
(this_expression) @operator
(identifier) @variable
(parameter) @variable.parameter
(number) @number
(comment) @comment
(string) @string
(null) @constant.builtin

(attribute_access_traversal_expression
  "."? @operator
  [
    "["?
    "]"?
  ] @punctuation.bracket)

(element_access_traversal_expression
  [
    "["
    "]"
  ] @punctuation.bracket)

(array_postfix_traversal_expression
  [
    "["
    "]"
  ] @punctuation.bracket)

(pair
  "=>" @operator)

(func_call_expression
  namespace: (_)? @module
  "::"? @punctuation.delimiter
  identifier: (_) @function.builtin
  "(" @punctuation.bracket
  arg: ((_)
    "," @punctuation.delimiter)*
  ")" @punctuation.bracket)

(projection_entry
  (identifier) @property)

(objectEntry
  key: (_) @property
  ":" @punctuation.delimiter)

(dereference_traversal_expression
  base: (identifier) @property
  "->" @operator)

(projection_traversal_expression
  "{" @punctuation.bracket
  scope: ((_)
    "," @punctuation.delimiter)
  "}" @punctuation.bracket)

(pipeline_expression
  "|" @operator)
