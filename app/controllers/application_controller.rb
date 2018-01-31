class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  def reqire_login
    @scess = Success.new
      unless user_signed_in?
        redirect_to '/users/sign_in'
      end
   @first_time = Time.new(2018, 01, 28, 0, 16, 44, "+00:00")
   @second_time = Time.new(2018, 01, 28, 1, 16, 44, "+00:00")
   
    if Time.now.to_i < @first_time.to_i
      @scess.chasi = 1
    elsif @first_time.to_i < Time.now.to_i and Time.now.to_i < @second_time.to_i
      @scess.chasi = 2
    else
      @scess.chasi = 3
    end
    @chasinow = @scess.chasi
  end
end
