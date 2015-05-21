json.array!(@owners) do |owner|
  json.extract! owner, :id, :first_name, :last_name, :primary_phone, :secondary_phone, :address, :city, :state, :zip, :emerg_name, :emerg_phone
  json.url owner_url(owner, format: :json)
end
