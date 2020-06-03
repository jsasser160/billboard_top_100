class SongsController < ApplicationController
  def show
    @song = Songs.find(songs[:id])
  end
  
  def new
    @song = Songs.new
  end
  
  def edit
    @song = Song.find(songs[:id])
  end
  
  def create
    @song = Songs.new(songs_params)
  
  if @Song.save
    redirect_to songs_path
  else 
    render :new
  
  end
  
  def update
    @page = Songs.find(params[:id])
  
  if @Song.update(page_params)
    redirect_to songs_path
  else
    render :edit
  end
  
  
  def destroy
    Songs.find(params:id]).destroy
    redirect_to songs_path
  end
  
  private
    def songs_params
    params.require(:songs).permit(:title, :artist, :song_name, :album)
  end 


# def index
#    @page = Pages.all
# end

# def show
#   @page = Pages.find(params[:id])
# end

# def new
#   @page = Pages.new
# end

# def edit
#   @page = Page.find(params[:id])
# end
# end

# def create
# @page = Pages.new(pages_params)

# if @Page.save
#   redirect_to pages_path
# else 
#   render :new

# end
# end

# def update
# @page = Page.find(params[:id])

# if @Page.update(page_params)
#   redirect_to pages_path
# else
#   render :edit
# end
# end

# def destroy
# Page.find(params:id]).destroy
# redirect_to pages_path
# end

# private
# def pages_params
#   params.require(:pages).permit(:title, :artist, :song_name, :album)
# end 