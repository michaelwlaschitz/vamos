class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :filter_location, :filter_interests, :filter_time, :about_vamos]
  def home
  end

  def about_vamos
  end

  def filter_location
  end

  def filter_interests
  end

  def apply
    @project = Project.find(params[:id])
  end

  def filter_time
  end

  def about_vamos
  end
end
