class UsersController < ApplicationController
  before_action :same_user_path, only: [:show]

  def index
    @profiles = Profile.order(position_id: :ASC)
  end

  def show
  end

  private

  def same_user_path
    @user = User.find(params[:id])
    unless user_signed_in? && current_user.id == @user.id
      redirect_to root_path
    end
  end

end
