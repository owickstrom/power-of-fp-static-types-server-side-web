type ResponseStateTransition m rw from to =
  forall req res c.
  Middleware
  m
  (Conn req {writer :: `\textbf{rw from}` | res} c)
  (Conn req {writer :: `\textbf{rw to}` | res} c)
