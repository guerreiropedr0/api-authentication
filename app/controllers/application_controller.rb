class ApplicationController < ActionController::API
  before_action :doorkeeper_authorize!

  skip_before_action :verify_authenticity_token

  private

  def current_user
    @current_user ||= User.find_by(id: doorkeeper_token[:resource_owner_id])
  end
end
