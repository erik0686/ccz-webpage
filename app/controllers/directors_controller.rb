class DirectorsController < ApplicationController
	def new
		@director = Director.new
	end

	def create 
		@director = Director.new(director_params)
		if @director.save
			redirect_to director_path
		else
			render 'new'
		end
	end

	def index
		@directors = Director.all
	end

	def show
		@director = Director.find(params[:id])
	end

	def edit
		
end

