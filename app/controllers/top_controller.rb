class TopController < ApplicationController

  def index
    @topics = Topic.order(id: :DESC)
    @topics_new = @topics.take(3)
    @profiles = Profile.order(position_id: :ASC)
    @profile_select = @profiles.take(3)
  end

end
