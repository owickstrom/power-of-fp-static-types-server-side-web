printForm conn = `\pause`
  case conn.request.method of `\pause`
    GET -> renderNameForm Nothing conn `\pause`
    POST ->
      case conn.request.body of `\pause`
        Left err -> do
          liftEff (log (message err))
          respond "Bad request, invalid form.\n" conn `\pause`
        Right (Form values) ->
          case lookup "firstName" values of `\pause`
            Just name | length name > 0 -> respond ("<p>Hi " <> name <> "!</p>") conn `\pause`
            _ -> renderNameForm (Just "Name is missing.") conn
