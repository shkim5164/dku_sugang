class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  def reqire_login
    @scess = Success.new
      unless user_signed_in?
        redirect_to '/users/sign_in'
      end
    @tts = Tt.all
    @scess.chasi = 1
    @time_one = Time.new(2019, 02, 01, 1, 00, 00, "+00:00").to_i
    @time_two = Time.new(2019, 02, 01, 1, 10, 00, "+00:00").to_i
    @tts.each do |h|
        if h.mornig_time_st < Time.now.to_i and Time.now.to_i < h.mornig_time_end
          @scess.chasi = h.chch
          @time_one = h.mornig_time_st
          @time_two = h.mornig_time_end
        end
    end
    @chasinow = @scess.chasi
  end

end
