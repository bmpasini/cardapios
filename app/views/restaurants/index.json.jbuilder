json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :street, :number, :complement, :email, :facebook, :twitter, :site
  json.url restaurant_url(restaurant, format: :json)
end
