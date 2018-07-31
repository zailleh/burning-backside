class ApplicationController < ActionController::Base
  before_action :get_user

  private
    def get_user
      @current_user = User.find_by(id: session[:user_id]) if session[:user_id].present?
    end
end
