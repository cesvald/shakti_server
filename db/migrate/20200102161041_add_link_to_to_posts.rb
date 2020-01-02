class AddLinkToToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :link_to, :string
  end
end
