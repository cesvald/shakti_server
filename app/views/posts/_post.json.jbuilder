json.extract! post, :id, :title, :body, :excerpt, :excerpt_image, :body_image, :post_on, :type, :written_on, :created_at, :updated_at
json.url post_url(post, format: :json)
