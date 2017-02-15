type Site =
  "tasks" :/ (Get Json (Array Task)
              :<|> Capture "id" TaskId :> Get Json Task)
`\pause`
site :: Proxy Site
site = Proxy
