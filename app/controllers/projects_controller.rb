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
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def filter_projects
    @projects = @projects.near(params[:address], 50) unless params[:address].blank?

    @projects = @projects.where('category IN (?)', params[:categories]) unless params[:categories].blank?
    if params[:time] == "1 - 4 h/week"
      @projects = @projects.where(hours_per_week: 1..4)
    elsif params[:time] == "5 - 9 h/week"
      @projects = @projects.where(hours_per_week: 5..9)
    elsif params[:time] == "10+ h/week"
      @projects = @projects.where(hours_per_week: 10..100)
    end
  end

  def project_params
    params.require(:project).permit(:title, :address, :description, :capacity, :category, :hours_per_week, photos:[])
  end

end
