readBody
  :: forall e.
     RequestBody
  -> Aff (http :: HTTP, err :: EXCEPTION, avar :: AVAR | e) String `\pause`
readBody body = do
  let stream = requestAsStream (unwrap body) `\pause`
  completeBody <- makeVar
  chunks <- makeVar' "" `\pause`
  liftEff do `\pause`
    Stream.onDataString stream UTF8 \chunk ->
      void (launchAff (modifyVar (_ <> chunk) chunks) `\pause`)
    Stream.onEnd stream $
      void (launchAff (takeVar chunks >>= putVar completeBody)) `\pause`
  takeVar completeBody
