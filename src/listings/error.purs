            v
  20        writeStatus statusOK
  21        :*> respond "Hello, Hyper!"
  22        :*> closeHeaders
                           ^

  Could not match type

    BodyOpen

  with type

    HeadersOpen
