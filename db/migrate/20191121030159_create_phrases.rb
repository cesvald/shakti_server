class CreatePhrases < ActiveRecord::Migration[6.0]
  def change
    create_table :phrases do |t|
      t.string :body
      t.string :body_image
      t.date :post_on

      t.timestamps
    end
  end
end
