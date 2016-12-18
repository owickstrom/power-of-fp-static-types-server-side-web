renderNameForm err conn =
  respond
  (fold [ errHtml
        , "<form method=\"post\">"
        , "<label>Your Name: <input method=\"post\" name=\"firstName\"></label>"
        , "<p><button type=\"submit\">Send</button></p>"
        , "</form>"
        ])
  conn
  where errHtml =
          case err of
            Just s -> "<p style=\"color: red;\">" <> s <> "</p>"
            Nothing -> ""
