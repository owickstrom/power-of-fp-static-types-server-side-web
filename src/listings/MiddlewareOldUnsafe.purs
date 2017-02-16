badMiddleware conn = do
  _ <- respond "First response" conn
  respond "Second response, crash!" conn
