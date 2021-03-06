class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.text :excerpt
      t.string :excerpt_image
      t.string :body_image
      t.date :post_on
      t.integer :kind
      t.date :written_on

      t.timestamps
    end
  end
end
