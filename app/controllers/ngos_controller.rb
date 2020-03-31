class NgosController < ApplicationController

  def new
    @ngo = Ngo.new
  end

  def create
    @ngo = Ngo.new(ngo_params)
    @ngo.user = current_user
    if @ngo.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def ngo_params
    params.require(:ngo).permit(:name, :phone, :description, :address, :logo)
  end
end
