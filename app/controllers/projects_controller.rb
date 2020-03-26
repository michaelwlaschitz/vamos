class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @projects = Project.geocoded

    @projects = @projects.near(params[:address])

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
