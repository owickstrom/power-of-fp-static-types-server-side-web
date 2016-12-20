respond `\pause`
  :: forall r m req res rw c.
     (Monad m, `\textbf{Response r}`, ResponseWriter rw m) =>
     `\textbf{r}` `\pause`
  -> Middleware
     m
     (Conn req { writer :: `\textbf{rw BodyOpen}` | res } c)
     (Conn req { writer :: `\textbf{rw ResponseEnded}` | res } c)
respond r = send (toResponse r) >=> end
