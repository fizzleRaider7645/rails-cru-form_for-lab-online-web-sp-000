class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end
  
  def new
    @artist = Artist.new
  end
  
  def create
    @artist = Artist.new(params.require(:artist).permit(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end
  
  def edit
    @artist = Artist.find(params[:id])
  end
  
  def update
    @artist = SchoolClass.find(params[:id])
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end
end
