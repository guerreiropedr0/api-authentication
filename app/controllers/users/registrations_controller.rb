# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json
  before_action :configure_sign_up_params, only: [:create]

  private

  def respond_with(resource, _opts = {})
    if resource.persisted?
      render json: {
        message: 'Signed up sucessfully.',
        user: resource
      }, status: :created
    else
      render json: { errors: resource.errors }, status: :unprocessable_entity
    end
    en

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
