json.array!(@forums) do |forum|
  json.extract! forum, :id, :title, :user_id
  json.url forum_url(forum, format: :json)
end
