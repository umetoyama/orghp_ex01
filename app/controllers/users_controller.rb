class UsersController < ApplicationController

  def index
    @profiles = Profile.order(position_id: :ASC)
  end

end
