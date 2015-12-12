json.array!(@qualidadeparceiros) do |qualidadeparceiro|
  json.extract! qualidadeparceiro, :id, :Nomequalidadep
  json.url qualidadeparceiro_url(qualidadeparceiro, format: :json)
end
