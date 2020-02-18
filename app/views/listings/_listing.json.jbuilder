json.extract! listing, :id, :name, :phone, :address, :postal_code, :email, :description, :price, :image_url, :home_service, :aggressive_pets_accepted, :created_at, :updated_at
json.url listing_url(listing, format: :json)
