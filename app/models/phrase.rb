class Phrase < ApplicationRecord
  scope :post_on_between, -> (started_at, finished_at) { where("post_on >= :started_at	AND post_on <= :finished_at", {started_at: started_at, finished_at: finished_at} ) }
  
  has_rich_text :body
end
