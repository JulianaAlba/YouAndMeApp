json.array!(@locals) do |local|
  json.extract! local, :id, :Nomelocal, :elevacao, :latitude, :longitude
  json.url local_url(local, format: :json)
end
