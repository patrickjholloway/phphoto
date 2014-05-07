class PagesController < ApplicationController

  def index
    redirect_to galleries_path if admin_signed_in?
  end

  def portfolio
    @galleries = Gallery.all
  end

end
