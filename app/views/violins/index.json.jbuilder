json.array!(@violins) do |violin|
  json.extract! violin, :id, :maker, :price
  json.url violin_url(violin, format: :json)
end
