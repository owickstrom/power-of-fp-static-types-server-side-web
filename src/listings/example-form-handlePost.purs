handlePost body conn =
  case body of `\pause`
    Left err -> do
      liftEff (log (message err))
      htmlWithStatus
        statusBadRequest
        (p [] (text "Bad request, invalid form."))
        conn `\pause`
    Right (Form values) ->
      case lookup "firstName" values of
        Just name | length name > 0 ->
          htmlWithStatus
          statusOK
          (p [] (text ("Hi " <> name <> "!")))
          conn
        _ ->
          htmlWithStatus
          statusBadRequest
          (renderNameForm (Just "Name is missing."))
          conn
