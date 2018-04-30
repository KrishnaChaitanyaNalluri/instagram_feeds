class CreateImageFeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :image_feeds do |t|
      t.string :photo
      t.string :text

      t.timestamps
    end
  end
end
