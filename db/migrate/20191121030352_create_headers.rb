class CreateHeaders < ActiveRecord::Migration[6.0]
  def change
    create_table :headers do |t|
      t.string :image
      t.date :post_on
      t.date :expire_on

      t.timestamps
    end
  end
end
