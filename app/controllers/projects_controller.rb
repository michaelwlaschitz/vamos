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

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @ngo = current_user.ngo
    @project.ngo = @ngo
    if @project.save
      redirect_to user_projects_path
    else
      render :new
    end
  end

  private

  def filter_projects
    @projects = @projects.near(params[:address], 50) unless params[:address].blank?

    categories_params = params[:categories].split() if params[:categories].present?

    @projects = @projects.where('category IN (?)', categories_params) unless categories_params&.reject(&:blank?).blank?

    @projects = @projects.where('timeframe IN (?)', params[:timeframe]) unless params[:timeframe]&.reject(&:blank?).blank?

  end

  def project_params
    params.require(:project).permit(:title, :address, :description, :capacity, :category, :timeframe, :start_time, :end_time, :start_date, :end_date, photos:[])
  end

end
