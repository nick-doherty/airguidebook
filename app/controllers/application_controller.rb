class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authentication

  def ensure_logged_in
    redirect_to(root_path) if @authenticated.nil?
  end

  private
  def authentication
    return unless session[:user_id]
      @authenticated = User.find_by_id(session[:user_id])
    unless @authenticated
            session[:user_id] = nil
                  redirect_to root_url
          end
  end
end