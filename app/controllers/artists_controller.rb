class ArtistsController < ApplicationController
  def show
    @artist= Artists.find(params[:id])
  end
  
  def new
     @artist = Artists.new
  end
  
  def edit
    @artist = Artist.find(params[:id])
  end
  
  def create
    @artist = Artists.new(artists_params)
  
  if @Artist.save
    redirect_to artists_path
  else 
    render :new
  
  end
  
  def update
    @artist = Artist.find(params[:id])
  
  if @Artist.update(artist_params)
    redirect_to artists_path
  else
    render :edit
  end
  
  end 
  
  def destroy
    Artist.find(params:id]).destroy
    redirect_to artists_path
  end
  
  private
    def artists_params
    params.require(:artists).permit(:title, :artist, :song_name, :album)
  end 