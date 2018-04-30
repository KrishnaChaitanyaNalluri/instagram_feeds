class AddColumnToImageFeeds < ActiveRecord::Migration[5.1]
  def change
    add_reference :image_feeds, :user, foreign_key: true
  end
end
