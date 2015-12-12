json.array!(@pictures) do |picture|
  json.extract! picture, :id, :Nomepicture
  json.url picture_url(picture, format: :json)
end
