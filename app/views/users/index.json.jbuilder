json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :password, :is_admin, :photo
  json.url user_url(user, format: :json)
end
