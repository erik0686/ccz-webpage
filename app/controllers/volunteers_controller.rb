class VolunteersController < ApplicationController
	def new
		@volunteer = Volunteer.new
	end

	def create
		@volunteer = Volunteer.new(volunteers_params)
		if @volunteer.save
			redirect_to volunteers_path
		else
			render 'new'
		end
	end

	def index
		@volunteers = Volunteer.all
	end

	def show
		@volunteer = Volunteer.find(params[:id])
	end

	def edit
		@volunteer = Volunteer.find(params[:id])
	end

	def update
		@volunteer = Volunteer.find(params[:id])
    if @volunteer.update(volunteers_params)
      redirect_to @volunteer
    else
    	render 'edit'
    end
    respond_to do |format|
      format.js
      format.html
    end
	end

	def destroy
    @volunteer = Volunteer.find(params[:id])
    @volunteer.destroy
    redirect_to volunteers_path
  end

  private

  def volunteers_params
    params.require(:volunteer).permit(:name, :age, :semester, :mail, :id_number)
  end
end
