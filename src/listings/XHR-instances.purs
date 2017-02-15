derive instance genericTask :: Generic Task

instance showTask :: Show Task where
  show = gShow

instance encodeJsonTask :: EncodeJson Task where
  encodeJson = gEncodeJson
  
instance decodeJsonTask :: DecodeJson Task where
  decodeJson = gDecodeJson
