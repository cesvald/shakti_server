json.extract! post, :id, :title, :excerpt_image, :body_image, :post_on, :kind, :written_on
json.parse_body post.parse_body_to_flutter
json.parse_excerpt post.parse_excerpt_to_flutter

