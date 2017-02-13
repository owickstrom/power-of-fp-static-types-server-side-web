type ResponseStateTransition m rw from to = `\pause`
  forall req res c. `\pause`
  Middleware
  m `\pause`
  (Conn req {writer :: `\textbf{rw from}` | res} c) `\pause`
  (Conn req {writer :: `\textbf{rw to}` | res} c) `\pause`
  Unit
