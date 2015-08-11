json.array!(@friends_lists) do |friends_list|
  json.extract! friends_list, :id, :name, :age
  json.url friends_list_url(friends_list, format: :json)
end
