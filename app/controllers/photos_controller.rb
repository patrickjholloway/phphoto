class PhotosController < ApplicationController
  layout "default"
  def show
    @photo = Photo.find(params[:id])
  end
end
