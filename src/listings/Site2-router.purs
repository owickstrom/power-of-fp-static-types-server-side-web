site2Router =
  router site2 (home :<|> allUsers :<|> getUser) onRoutingError
