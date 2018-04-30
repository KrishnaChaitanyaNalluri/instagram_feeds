class InstagramFeedsController < ApplicationController

  def setup_connection
    redirect_to InstagramApis.authorize_instagram
  end

  def get_token
    response = InstagramApis.generate_access_token(params[:code])
    session[:access_token] = response.access_token
    redirect_to recet_media_path
  end

  def recent_media
    @user = User.get_feeds(session[:access_token])
  end
end
