class AnnouncementsController < ApplicationController

	def new
		@annoucement = Announcement.new
	end

	def create
		@announcement = Announcement.new(annoucement_params)
		if @announcement.save
			redirect_to annoucements_path
		else
			render 'new'
		end
	end

	def index
		@announcements = Announcement.all
	end

	def show
		@announcement = Announcement.find(params[:id])
	end

	def edit
		@announcement = Announcement.find(params[:id])
	end

	def update
		@announcement = Announcement.find(params[:id])
    if @announcement.update(annoucement_params)
      redirect_to @announcement
    else
    	render 'edit'
    end
    respond_to do |format|
      format.js
      format.html
    end
	end

	def destroy
    @announcement = Announcement.find(params[:id])
    @announcement.destroy
    redirect_to announcements_path
  end

  private

  def announcement_params
    params.require(:announcement).permit(:info)
  end

end
