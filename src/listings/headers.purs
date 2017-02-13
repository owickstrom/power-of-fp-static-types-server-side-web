headers `\pause`
  :: forall t m req res rw b c.
     (`\textbf{Traversable\ t}`, Monad m, ResponseWriter rw m b) =>
     `\textbf{t Header}` `\pause`
  -> Middleware
     m
     (Conn req { writer :: `\textbf{rw HeadersOpen}` | res } c)
     (Conn req { writer :: `\textbf{rw BodyOpen}` | res } c)
     Unit `\pause`
headers hs =
  traverse_ writeHeader hs
  :*> closeHeaders
