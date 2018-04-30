class InstagramApis
  class << self

    def authorize_instagram
      Instagram.authorize_url(:redirect_uri => set_callback_url)
    end

    def generate_access_token(code)
        Instagram.get_access_token(code, :redirect_uri => set_callback_url)
    end

    def get_recent_media(access_token)
      Instagram.client(:access_token => access_token)
    end

    def set_callback_url
      "http://localhost:3000/oauth/callback"
    end
  end
end
