app = readBodyAsString
      >=> parseForm
      >=> handler
