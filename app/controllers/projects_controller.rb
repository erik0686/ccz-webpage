class ProjectsController < ApplicationController
	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			redirect_to project_path
		else
			render 'new'
		end
	end

	def index
		@projects = Project.all
	end

	def show
		@projects = Project.find(params[:id])
	end

	def edit
		@projects = Project.find(params[:id]) 
	end

	def update
		@project = Project.find(params[:id])
		if @project.update(project_params)
			redirect_to @project
		else
			render 'edit'
		end
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to projects_path
	end

	private

	def project_params
		params.require(:project).permit(:creator_email, :creator_firstname, :creator_lastname, :description)
	end
end
