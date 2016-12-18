headers
  :: forall t m req res rw c.
     (Traversable t, Monad m, ResponseWriter rw m) =>
     `\textbf{t Header}` `\pause`
  -> Middleware
     m
     (Conn req { writer :: `\textbf{rw HeadersOpen}` | res } c)
     (Conn req { writer :: `\textbf{rw HeadersClosed}` | res } c)
