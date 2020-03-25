class ProjectsController < ApplicationController

  def index
    @projects = Project.near(params[:address])
  end

  def show
    @project = Project.find(params[:id])
  end

  def create
  end

  def new
  end

end
