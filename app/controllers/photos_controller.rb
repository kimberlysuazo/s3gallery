class PhotosController < ApplicationController

	def create 
		@album = Album.find_by(id: params[:album_id])
		
		if params[:images]
      params[:images].each do |image|
        photo = @album.photos.new(image: image)
      
				if photo.save
					flash[:success] = 'Upload successful.'
	    	else 
	    		flash[:danger] = photo.errors.full_messages
	     	end 	
    	end
    end
    redirect_to @album
	end 

	def photo_params
		params.require(:photo).permit(:images)
	end 	

end
