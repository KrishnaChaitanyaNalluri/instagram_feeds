class ImageFeed < ApplicationRecord
  belongs_to :user

  def self.save_user_feeds(media_feeds, user)
    user.image_feeds.destroy_all if user.image_feeds.any? # delete the old feeds
    media_feeds.each do | image_feed |
      user.image_feeds.create!(photo: image_feed['images']['standard_resolution']['url'], text: image_feed['caption']['text'])
    end
  end
end
