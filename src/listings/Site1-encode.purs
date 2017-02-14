instance encodeHTMLHome :: EncodeHTML Home where
  encodeHTML Home =
    p [] [ text "Welcome to my site!" ]
