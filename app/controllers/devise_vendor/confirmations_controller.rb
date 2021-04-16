# frozen_string_literal: true

class DeviseVendor::ConfirmationsController < Devise::ConfirmationsController
  # GET /resource/confirmation/new
  # def new
  #   super
  # end

  # POST /resource/confirmation
  # def create
  #   super
  # end

  # GET /resource/confirmation?confirmation_token=abcdef
  def show
    self.resource = resource_class.find_by(confirmation_token: params[:confirmation_token])
    super if !resource || resource.confirmed? 
  end

  def enter_info
    self.resource = resource_class.find_by_confirmation_token(params[:confirmation_token])
    if resource.update(enter_info_params) && resource.password_match?
      self.resource = resource_class.confirm_by_token(params[:confirmation_token])
      set_flash_message :notice, :confirmed
      sign_in resource
      redirect_to top_vendor_path
    else
      render :show
    end
  end

  # protected

  private 
  
  def enter_info_params
    params.require(:vendor).permit(:shop_name,
                                   :introduction,
                                   :last_name,
                                   :first_name,
                                   :kana_last_name,
                                   :kana_first_name,
                                   :birth_date,
                                   :phone_number,
                                   :postcode,
                                   :prefecture_code,
                                   :city,
                                   :house_number,
                                   :building,
                                   :front_id_image,
                                   :back_id_image,
                                   :password,
                                   :password_confirmation
                                  )
  end

  # The path used after resending confirmation instructions.
  # def after_resending_confirmation_instructions_path_for(resource_name)
  #   super(resource_name)
  # end

  # The path used after confirmation.
  # def after_confirmation_path_for(resource_name, resource)
  #   super(resource_name, resource)
  # end
end
