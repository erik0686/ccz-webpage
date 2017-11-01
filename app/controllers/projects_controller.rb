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
		@project
		
	end
end
