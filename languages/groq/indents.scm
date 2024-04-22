(projection_traversal_expression
  base: (_)?
  "{" @start
  "}" @end) @indent

(attribute_access_traversal_expression
  base: (_)
  "[" @start
  "]" @end) @indent

(element_access_traversal_expression
  base: (_)
  "[" @start
  "]" @end) @indent

(slice_traversal_expression
  base: (_)
  "[" @start
  "]" @end) @indent

(array_postfix_traversal_expression
  base: (_)
  "[" @start
  "]" @end) @indent

(object
  "{" @start
  "}" @end) @indent

(array
  "[" @start
  "]" @end) @indent

(func_call_expression
  "(" @start
  ")" @end) @indent
