type Conn req res components =
  { request :: req
  , response :: res
  , components :: components
  }
