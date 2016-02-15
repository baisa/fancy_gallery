class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.create( picture_params )
    redirect_to @picture
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
 
    redirect_to pictures_path
  end



private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def picture_params
  params.require(:picture).permit(:avatar, :title)
end
end
