class PicturesController < ApplicationController
  
  before_filter :get_picture, :only => [:show, :edit, :update, :destroy]

  def get_picture
    @picture = Picture.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit(:artist, :title, :url)
  end

  def index
    @pictures = Picture.all
  end

  def show
  end

  def new
    @picture = Picture.new
  end

  def create
    # make a new picture with what picture_params returns (which is a method we're calling)
    @picture = Picture.new(picture_params)
    if @picture.save
      # if the save for the picture was successful, go to index.html.erb
      redirect_to pictures_url
    else
      # otherwise render the view associated with the action :new (i.e. new.html.erb)
      render :new
    end
  end

  def edit
  end

  def update
    if @picture.update_attributes(picture_params)
      redirect_to @picture
    else
      render :edit
    end
  end

  def destroy
    @picture.destroy
    redirect_to pictures_path
  end
end
