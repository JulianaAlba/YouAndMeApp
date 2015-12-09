json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nome, :idade, :senha, :confirmarsenha, :sexo, :sexoparceiro, :qualidade, :qualidadeparceiro, :defeito, :defeitoparceiro, :foto
  json.url usuario_url(usuario, format: :json)
end
