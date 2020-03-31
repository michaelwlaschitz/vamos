class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @projects = Project.all

    filter_projects

    @markers = @projects.map do |project|
      {
        lat: project.latitude,
        lng: project.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { project: project })
      }
    end
  end



  def show
    @project = Project.find(params[:id])
    @ngo = @project.ngo.name
    @reviews = @project.reviews

      @markers = [{
      lat: @project.latitude,
      lng: @project.longitude
    }]
  end

  def create
  end

  def new
  end

  private

  def filter_projects
    @projects = @projects.near(params[:address], 50) if params[:address]

    @projects = @projects.where('category IN (?)', params[:categories]) if params[:categories]

    if params[:time] == "1-4"
      @projects = @projects.where(hours_per_week: 1..4)
    elsif params[:time] == "5-9"
      @projects = @projects.where(hours_per_week: 5..9)
    elsif params[:time] == "10+"
      @projects = @projects.where(hours_per_week: 10..100)
    end
  end

end
