class AlbumsController < ApplicationController

	def index
		@albums = Album.all
	end 

	def show
		@album = Album.find_by(id: params[:id])
	end	
		
	def new 
		@album = Album.new
	end 	

	def create 
		@album = Album.new(album_params)
 
  	@album.save
  	redirect_to albums_path
	end 

	private 
	def album_params 
		params.require(:album).permit(:title) 
	end 	

end
