class PicturesController < ApplicationController
  def index
  end
  def new
    @picture = Picture.new
  end

  def create
  @picture = Picture.create( picture_params )
  end

private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def picture_params
  params.require(:picture).permit(:avatar, :title)
end
end
