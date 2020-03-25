class ProjectsController < ApplicationController

  def index
    @projects = Project.all

    @projects = Project.geocoded #returns project with coordinates

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

      @markers = [{
      lat: @project.latitude,
      lng: @project.longitude
    }]
  end

  def create
  end

  def new
  end

end
