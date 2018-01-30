class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    @users = User.all
    @users_emails = []
    # @users_pws = []
    
    for x in @users
      @users_emails.push(x.email)
    end
    # for y in @users
    #   @users_pws.push(y.encrypted_password)
    # end
    
    super
  end

  # POST /resource/sign_in
  def create
    super
  end

  # DELETE /resource/sign_out
  def destroy
    current_user.update_attribute(:last_sign_out_at, Time.now)
    super
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
