app = `\pause`
  fallbackTo `\pause`
  (contentType textHTML >=> closeHeaders >=> notFound) `\pause`
  (`\textbf{resource\ home}` <|> `\textbf{resource about}`)
