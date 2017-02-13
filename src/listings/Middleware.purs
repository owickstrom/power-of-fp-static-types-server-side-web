newtype Middleware m i o a =
  Middleware (i -> m (Tuple a o))
