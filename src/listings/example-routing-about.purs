aboutView = do
  h1 [] (text "About")
  p [] (text "OK, about this example...")
`\pause`
about = { path: ["about"]
        , "GET": handler (htmlWithStatus statusOK aboutView)
        , "POST": notSupported
        }
