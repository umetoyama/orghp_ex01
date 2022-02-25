class TopController < ApplicationController

  def index
    @topics = Topic.order(id: :DESC)
    @topics_new = @topics.take(5)
  end

end
