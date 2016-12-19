renderNameForm err = html do `\pause`
  errHtml
  element "form" [(Tuple "method" "post")] do
    element "label" [Tuple "for" "firstName"] do
      text "Your Name:"
    p [] do
      element "input" [ Tuple "name" "firstName"
                      , Tuple "id" "firstName"
                      ] (pure unit)
    p [] do
      element "button" [] (text "Send") `\pause`
  where errHtml =
          case err of
            Just s -> p [(Tuple "style" "color: red;")] (text s)
            Nothing -> pure unit
