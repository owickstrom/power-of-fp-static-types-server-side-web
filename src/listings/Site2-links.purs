instance encodeHTMLAllUsers :: EncodeHTML AllUsers where
  encodeHTML (AllUsers users) = `\pause`
    element_ "div" [ h1 [] [ text "Users" ]
                   , ul [] (map linkToUser users)
                   ] `\pause`
    where
      linkToUser (User u) =
        case `\textbf{linksTo site2}` of
          _ :<|> _ :<|> getUser' ->
            li [] [ linkTo `\textbf{(getUser' u.id)}` [ text u.name ] ]
