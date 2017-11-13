class DirectorsController < ApplicationController
  before_action :authenticate_user!
  def new
    @director = Director.new
  end

  def create
    @director = Director.new(director_params)
    if @director.save
      redirect_to directors_path
    else
      render 'new'
    end
  end

  def index
    @directors = Director.all
  end

  def destroy
    @director = Director.find(params[:id])
    @director.destroy
    redirect_to directors_path
  end

  private

  def director_params
    params.require(:director).permit(:name, :career, :semester, :status, :mail, :startdate, :enddate)
  end
end
