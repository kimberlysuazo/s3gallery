class PhotosController < ApplicationController

	def create 
		@album = Album.find_by(id: params[:album_id])
		@photo = @album.photos.new(photo_params)
		if @photo.save
      redirect_to @album, notice: 'Photo was successfully added.'
     else
       render action: 'index'
    end
	end 

	def photo_params
		params.require(:photo).permit(:image)
	end 	

end
