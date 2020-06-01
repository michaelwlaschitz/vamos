class ReviewsController < ApplicationController

def new
    @application = Application.find(params[:application_id])
    @review = Review.new
  end

  def create
    @application = Application.find(params[:application_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.application = @application
      if @review.save
      redirect_to project_path(@application.project)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
