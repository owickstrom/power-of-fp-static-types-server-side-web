class ResponseWriter rw m | rw -> m where `\pause`

  writeHeader
    :: Header
    -> ResponseStateTransition m rw `\textbf{HeadersOpen HeadersOpen}` `\pause`

  closeHeaders
    :: ResponseStateTransition m rw `\textbf{HeadersOpen HeadersClosed}` `\pause`

  send
    :: String
    -> ResponseStateTransition m rw `\textbf{HeadersClosed HeadersClosed}` `\pause`

  end
    :: ResponseStateTransition m rw `\textbf{HeadersClosed ResponseEnded}`
