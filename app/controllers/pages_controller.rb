class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :filter_location, :filter_interests, :filter_time]
  def home

  end

  def filter_location
  end

  def filter_interests

  end

  def filter_time

  end
end
