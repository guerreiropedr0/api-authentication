class Api::UsersController < ApplicationController
  skip_before_action :doorkeeper_authorize!, only: %i[create]

  include DoorkeeperRegisterable

  private

  def user_params
    params.permit(:email, :password, :client_id)
  end
end
