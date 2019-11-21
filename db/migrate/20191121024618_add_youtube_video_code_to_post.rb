class AddYoutubeVideoCodeToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :youtube_video_code, :string
  end
end
