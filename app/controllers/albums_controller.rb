class AlbumsController < ApplicationController

	def index
		@albums = Album.all
	end 

	def show
		@album = Album.find_by(id: params[:id])
		@photos = @album.photos
	end	
		
	def new 

	end 	

	def create 
		@album = Album.new(params[:title])
 
  	@album.save
  	redirect_to @album
	end 

	private 
	def album_params 
		params.require(:album).permit(:title) 
	end 	

end
