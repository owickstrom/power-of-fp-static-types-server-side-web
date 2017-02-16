class ResponseWriter rw m b | rw -> b where `\pause`
  writeStatus
    :: Status
    -> ResponseStateTransition m rw `\textbf{StatusLineOpen HeadersOpen}` `\pause`

  writeHeader
    :: Header
    -> ResponseStateTransition m rw `\textbf{HeadersOpen HeadersOpen}` `\pause`

  closeHeaders
    :: ResponseStateTransition m rw `\textbf{HeadersOpen BodyOpen}` `\pause`

  send
    :: b
    -> ResponseStateTransition m rw `\textbf{BodyOpen BodyOpen}` `\pause`

  end
    :: ResponseStateTransition m rw `\textbf{BodyOpen ResponseEnded}`
