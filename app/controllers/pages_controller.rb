class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home

  end

  def filter_location
    @project = Project.new
  end

  def filter_interests

  end

  def filter_time

  end
end
