aboutView = html do `\pause`
  h1 [] (text "About") `\pause`
  p [] (text "OK, about this example...") `\pause`

about = `\pause`
  { path: ["about"] `\pause`
  , "GET": handler (contentType textHTML
                    >=> closeHeaders
                    >=> aboutView) `\pause`
  , "POST": notSupported `\pause`
  }
