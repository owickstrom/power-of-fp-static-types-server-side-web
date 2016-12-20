htmlWithStatus status doc =
  writeStatus status
  >=> contentType textHTML
  >=> closeHeaders
  >=> html doc
