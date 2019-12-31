class Post < ApplicationRecord
  scope :post_on_between, -> (started_at, finished_at) { where("post_on >= :started_at	AND post_on <= :finished_at", {started_at: started_at, finished_at: finished_at} ) }
  scope :by_kind, ->(kind) { where(kind: kind) }
  
  enum kind: [:meditation, :emanation, :quote, :phrase, :article, :home_header]
  
  has_rich_text :body
  has_rich_text :excerpt
end
