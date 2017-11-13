class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path
    else
      render 'new'
    end
  end

  def index
    @q = Project.ransack(params[:q])
    @projects = @q.result(distinct: true)
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to projects_path
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  def change_status2
    @project = Project.find(params[:project_id])
    @project.change_status
  end

  private

  def project_params
    params.require(:project).permit(:creator_email, :creator_firstname, :creator_lastname, :description, :avatar, :name, :status)
  end
end
