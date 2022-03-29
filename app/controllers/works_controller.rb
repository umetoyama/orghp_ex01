class WorksController < ApplicationController

  def index
    @works = Work.order(id: :DESC)
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def work_params
    params.require(:work).permit(:title, :category, :description, :movie_link, :image)
  end

end
