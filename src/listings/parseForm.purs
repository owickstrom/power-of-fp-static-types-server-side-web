parseForm ∷ forall m req res c.
            Applicative m =>
            Middleware
            m
            (Conn { body ∷ String
                  , headers :: StrMap String
                  | req
                  } res c)
            (Conn { body ∷ Either Error Form
                  , headers :: StrMap String
                  | req
                  }
                  res
                  c)
parseForm conn = do
  let form =
        case lookup "content-type" conn.request.headers >>= parseContentMediaType of
          Nothing -> Left (error "Could not parse content-type header.")
          Just mediaType | mediaType == applicationFormURLEncoded ->
            splitPairs conn.request.body
          Just mediaType -> Left (error $ "Invalid content media type: " <> show mediaType)
  pure (conn { request = (conn.request { body = form }) })
  where
    toTuple :: Array String -> Either Error (Tuple String String)
    toTuple kv =
      case kv of
        [key, value] → Right (Tuple (decodeURIComponent key) (decodeURIComponent value))
        parts        → Left (error ("Invalid form key-value pair: " <> joinWith " " parts))
    splitPair = split (Pattern "=")
    splitPairs ∷ String → Either Error Form
    splitPairs = split (Pattern "&")
                 >>> map splitPair
                 >>> map toTuple
                 >>> sequence
                 >>> map Form
