class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :contact1_name, :contact1_number, :contact2_name, :contact2_number)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password, :contact1_name, :contact1_number, :contact2_name, :contact2_number)
  end
  
end