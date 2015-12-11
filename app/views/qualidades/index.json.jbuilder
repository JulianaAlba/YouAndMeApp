json.array!(@qualidades) do |qualidade|
  json.extract! qualidade, :id, :Nomequalidade
  json.url qualidade_url(qualidade, format: :json)
end
