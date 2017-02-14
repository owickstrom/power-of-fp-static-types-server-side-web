onRoutingError status msg =
  writeStatus status
  :*> contentType textHTML
  :*> closeHeaders
  :*> respond (maybe "" id msg)

site1Router = router site1 home onRoutingError
