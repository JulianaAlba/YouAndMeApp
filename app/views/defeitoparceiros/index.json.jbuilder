json.array!(@defeitoparceiros) do |defeitoparceiro|
  json.extract! defeitoparceiro, :id, :Nomedefeitop
  json.url defeitoparceiro_url(defeitoparceiro, format: :json)
end
