class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end
  
  def new
    @artist = Artist.new
  end
  
  def create
    binding.pry
    # @artist = Artist.new(params.require(:artist).permit)
    redirect_to artist_path(@artist)
  end
end
