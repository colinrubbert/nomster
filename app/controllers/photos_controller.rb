class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params)
    redirect_to place_path(@place)
  end

  def destroy
    @place = Place.find(params[:place_id])
    @photo = Photo.find(params[:id])

    if @place.user != current_user
      return render :text => 'Not Allowed', :status => :forbidden
    end
    
    @photo.destroy
    redirect_to place_path(@place)
  end

  private

  def photo_params
    params.require(:photo).permit(:picture, :caption)
  end

end
