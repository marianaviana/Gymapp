class RegistrationsController < Devise::RegistrationsController
  def create
    super
    resource.update_attribute(:type, Employee)
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :position, :email,
                                 :password, :password_confirmation,
                                 :birth_date, :rg, :cpf, :telephone,
                                 :admission_date)
  end

  def account_update_params
    params.require(:user).permit(:name, :position, :email,
                                 :password, :password_confirmation,
                                 :birth_date, :rg, :cpf, :telephone,
                                 :admission_date)
  end
end
