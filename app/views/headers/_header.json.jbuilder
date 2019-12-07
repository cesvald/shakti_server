json.extract! header, :id, :image, :post_on, :expire_on, :created_at, :updated_at
json.url header_url(header, format: :json)
