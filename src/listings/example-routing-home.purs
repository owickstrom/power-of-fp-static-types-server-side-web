homeView = `\pause`
  html do
    h1 [] (text "Welcome!") `\pause`
    p [] do
      text "Read more at " `\pause`
      `\textbf{linkTo\ about}` (text "About") `\pause`
      text "." `\pause`

home = { path: []
        , "GET":
          handler (contentType textHTML
                  >=> closeHeaders
                  >=> homeView)
        , "POST": notSupported
        }

