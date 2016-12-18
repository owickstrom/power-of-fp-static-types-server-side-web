parseForm
  :: forall m req res c.
     Applicative m =>
     Middleware
     m
     (Conn { `\textbf{body\ ::\ String}`
           , headers :: StrMap String
           | req
           } res c)
     (Conn { `\textbf{body\ ::\ Either\ Error\ Form}`
           , headers :: StrMap String
           | req
           }
           res
           c)
parseForm conn =
  pure (conn { request = (conn.request { `\textbf{body\ =\ form}` }) })
  where
    form =
      case lookup "content-type" conn.request.headers >>= parseContentMediaType of
        Nothing ->
          throwError (error "Missing or invalid content-type header.")
        Just mediaType | mediaType == applicationFormURLEncoded ->
          Form <$> splitPairs conn.request.body
        Just mediaType ->
          throwError (error ("Cannot parse media of type: " <> show mediaType))
