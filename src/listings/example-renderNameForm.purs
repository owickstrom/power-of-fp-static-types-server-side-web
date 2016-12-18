renderNameForm err conn = `\pause`
  respond
  (fold [ errHtml
        , "<form method=\"post\">"
        , "<label>Your Name: <input method=\"post\" name=\"firstName\"></label>"
        , "<p><button type=\"submit\">Send</button></p>"
        , "</form>"
        ])
  conn `\pause`
  where errHtml =
          case err of
            Just s -> "<p style=\"color: red;\">" <> s <> "</p>"
            Nothing -> ""
