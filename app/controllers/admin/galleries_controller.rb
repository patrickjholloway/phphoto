class Admin::GalleriesController < ApplicationController
  before_action :authenticate_admin!
  layout "default"
  def index
    @galleries = Gallery.all
  end
end
