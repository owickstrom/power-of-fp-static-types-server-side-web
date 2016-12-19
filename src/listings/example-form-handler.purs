handler conn =
  case conn.request.method of
    GET -> htmlWithStatus
            statusOK
            (renderNameForm Nothing)
            conn
    POST -> handlePost conn.request.body conn
