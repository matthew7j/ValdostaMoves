json.array!(@gyms) do |gym|
  json.extract! gym, :id, :latitude, :longitude, :address, :description, :title
  json.url gym_url(gym, format: :json)
end
