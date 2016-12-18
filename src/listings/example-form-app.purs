handler = headers [(Tuple "Content-Type" "text/html")]
          >=> printForm `\pause`

app = readBodyAsString
      >=> parseForm
      >=> handler
