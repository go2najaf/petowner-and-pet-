class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :address, :apt_num, :city, :state, :zip_code, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :address, :apt_num, :city, :state, :zip_code, :email, :password, :password_confirmation, :current_password)
  end
end