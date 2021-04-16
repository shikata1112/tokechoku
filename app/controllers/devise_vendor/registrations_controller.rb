# frozen_string_literal: true

class DeviseVendor::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]
  
  protected

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:shop_name,
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
                                                       :house_number,
                                                       :building,
                                                       :front_id_image,
                                                       :back_id_image
                                                      ])
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:email,
                                                              :password,
                                                              :password_confirmation,
                                                              :current_password
                                                             ])
  end

  def update_resource(resource, params)
    resource.update_without_current_password(params)
  end

  def after_inactive_sign_up_path_for(resource)
    vendor_authentication_email_path
  end

  def after_update_path_for(resource)
    top_vendor_path
  end
end
