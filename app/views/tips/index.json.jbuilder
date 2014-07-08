json.array!(@tips) do |tip|
  json.extract! tip, :id, :type, :description, :image_url
  json.url tip_url(tip, format: :json)
end
