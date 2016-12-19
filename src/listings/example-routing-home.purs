homeView = do
  h1 [] (text "Welcome!")
  p [] do
    text "Read more at "
    -- Type-safe routing:
    linkTo about (text "About")
    text "." `\pause`

home = { path: []
        , "GET":
          handler (htmlWithStatus statusOK homeView)
        , "POST": notSupported
        }

