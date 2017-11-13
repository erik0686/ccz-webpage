class CommunitiesController < ApplicationController
  def new
    @community = Community.new
  end

  def create
    @community = Community.new(community_params)
    if @community.save
      redirect_to communities_path
    else
      render 'new'
    end
  end

  def index
    @communities = Community.all
  end

  def show
    @community = Community.find(params[:id])
  end

  def edit
    @community = Community.find(params[:id])
  end

  def update
    @community = Community.find(params[:id])
    if @community.update(community_params)
      redirect_to @community
    else
      render 'edit'
    end
    respond_to do |format|
      format.js
      format.html
    end
  end

  def destroy
    @community = Community.find(params[:id])
    @community.destroy
    redirect_to communities_path
  end

  private

  def community_params
    params.require(:community).permit(:name, :population)
  end
end
