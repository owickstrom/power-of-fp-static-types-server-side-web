readBodyAsString
  :: forall e req res c.
     Middleware
     (Aff (http :: HTTP, err :: EXCEPTION, avar :: AVAR | e))
     (Conn { `\textbf{body\ ::\ RequestBody}`
           , contentLength :: Maybe Int
           | req
           } res c)
     (Conn { `\textbf{body\ ::\ String}`
           , contentLength :: Maybe Int
           | req
           } res c) `\pause`
readBodyAsString conn = do
  s <- readBody conn.request.body
  pure (conn { request = (conn.request { `\textbf{body\ =\ s}` }) })
