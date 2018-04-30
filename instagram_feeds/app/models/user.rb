class User < ApplicationRecord

  has_many :image_feeds

  def self.get_feeds(access_token)
    client = InstagramApis.get_recent_media(access_token)
    user = save_username(client)
    if user
        ImageFeed.save_user_feeds(client.user_recent_media, user)
    end
    return user
  end

  def self.save_username(client)
    where(username: client.user.username).first_or_create do |user|
      user.full_name = client.user.full_name
      user.profile_picture = client.user.profile_picture
      user.username = client.user.username
      user.save
    end
  end
end
