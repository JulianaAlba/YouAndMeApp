json.array!(@pessoas) do |pessoa|
  json.extract! pessoa, :id, :nome, :idade, :senha, :confirmarsenha, :sexo, :sexoparceiro, :qualidade_id, :qualidadeparceiro_id, :defeito_id, :defeitoparceiro_id, :picture_id
  json.url pessoa_url(pessoa, format: :json)
end
