(projection_traversal_expression
  base: (_)?
  "{" @start
  "}" @end) @indent

(object
  "{" @start
  "}" @end) @indent

(array
  "[" @start
  "]" @end) @indent

(func_call_expression
  "(" @start
  ")" @end) @indent
