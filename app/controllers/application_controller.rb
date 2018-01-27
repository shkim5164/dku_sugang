class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  def reqire_login
    @scess = Success.new
      unless user_signed_in?
        redirect_to '/users/sign_in'
      end
    @scess.chasi = 1
    @chasinow = @scess.chasi
  end
end
