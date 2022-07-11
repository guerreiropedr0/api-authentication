class Api::UsersController < ApplicationController
  skip_before_action :doorkeeper_authorize!, only: %i[create]

  include DoorkeeperRegisterable
end
