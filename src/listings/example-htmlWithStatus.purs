htmlWithStatus status x =
  writeStatus status
  >=> contentType textHTML
  >=> closeHeaders
  >=> html x
