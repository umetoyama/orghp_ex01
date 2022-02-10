class TopicsController < ApplicationController
  before_action :move_to_root_path, only: [:new]

  def index
  end

  def new
    @topic = Topic.new
    # @user = User.find(curremt_user.id)
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to action: :index
    else
      render :new
    end
  end

  private

  def topic_params
    params.require(:topic).permit(:title).merge(user_id: current_user.id)
  end

  def move_to_root_path
    unless user_signed_in?
      redirect_to root_path
    end
  end

end
