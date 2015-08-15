json.array!(@wallets) do |wallet|
  json.extract! wallet, :id, :balance_left, :days_left
  json.url wallet_url(wallet, format: :json)
end
