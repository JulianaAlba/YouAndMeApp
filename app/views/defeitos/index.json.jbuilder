json.array!(@defeitos) do |defeito|
  json.extract! defeito, :id, :Nomedefeito
  json.url defeito_url(defeito, format: :json)
end
