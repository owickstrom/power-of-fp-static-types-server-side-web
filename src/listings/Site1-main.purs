main =
  runServer defaultOptions
            onListening
            onRequestError
            {}
            site1Router
  where
    onListening (Port port) =
      log ("Listening on http://localhost:" <> show port)

    onRequestError err =
      log ("Request failed: " <> show err)
