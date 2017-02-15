update :: Action
       -> State
       -> EffModel State Action (ajax :: AJAX)
update RequestTasks state =
  case `\textbf{asClients site}` of `\pause`
    allTasks :<|> _ -> `\pause`
      { state: state { status = "Fetching tasks..." }
      , effects: [ ReceiveTasks <$> allTasks ]
      }
