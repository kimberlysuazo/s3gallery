class PhotosController < ApplicationController

	def show 
	end 
	
	def new 
	end 

	def create 
		@album = Album.find_by(id: params(:id))
		@photo = @album.photos
	end 


end
