class GalleriesController < ApplicationController
  layout "default"
  def show
    @gallery = Gallery.find(params[:id])
  end
end
