json.array!(@savings) do |saving|
  json.extract! saving, :id, :title, :description
  json.url saving_url(saving, format: :json)
end
