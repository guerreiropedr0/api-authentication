# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Setup authorization rules here
  end
end
