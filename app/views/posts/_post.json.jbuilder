json.extract! post, :id, :title, :excerpt_image, :body_image, :post_on, :kind, :written_on
json.parse_body post.body.to_plain_text
json.parse_excerpt post.excerpt.to_plain_text

