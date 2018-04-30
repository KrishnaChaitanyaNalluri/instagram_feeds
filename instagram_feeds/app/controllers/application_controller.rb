class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from StandardError, :with => :handle_exception

  def handle_exception(exception)
    flash[:err] = exception.message
    redirect_to root_path
  end
end
