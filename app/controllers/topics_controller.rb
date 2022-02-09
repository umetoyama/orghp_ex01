class TopicsController < ApplicationController
  before_action :move_to_root_path, only: [:new]

  def index
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.create(topic_params)
    redirect_to :new
  end

  private

  def topic_params
    params.require(:topic).permit(:tetle, :content, :image).merge(user_id: current_user.id)
  end

  def move_to_root_path
    unless user_signed_in?
      redirect_to root_path
    end
  end

end
