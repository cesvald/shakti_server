class CreateConfigurations < ActiveRecord::Migration[6.0]
  def change
    create_table :configurations do |t|
      t.string :name
      t.string :value

      t.timestamps
    end
  end
end