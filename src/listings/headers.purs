headers `\pause`
  :: forall t m req res rw c.
     (`\textbf{Traversable\ t}`, Monad m, ResponseWriter rw m) =>
     `\textbf{t Header}` `\pause`
  -> Middleware
     m
     (Conn req { writer :: `\textbf{rw HeadersOpen}` | res } c)
     (Conn req { writer :: `\textbf{rw BodyOpen}` | res } c)
