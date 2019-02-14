class CommentsController < ApplicationController
	def create
		@wallpaper = Wallpaper.find(params[:wallpaper_id])
		@comment = @wallpaper.comments.create(params[:comment].permit(:name, :body))
		redirect_to wallpaper_path(@wallpaper)
	end 

	def destroy
		@wallpaper = Wallpaper.find(params[:wallpaper_id])
		@comments = @wallpaper.comments.find(params[:id])
		@comments.destroy
		redirect_to wallpaper_path(@wallpaper)
	end	
end
