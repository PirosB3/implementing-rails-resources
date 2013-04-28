class PhotosController < ApplicationController
  def index
      @user = User.find(params[:user_id])
      @photos = @user.photos.all
  end

  def new
      @user = User.find(params[:user_id])
      @photo = @user.photos.new
  end

  def create
      @user = User.find(params[:user_id])
      @photo = @user.photos.new params[:photo]

      @photo.save
      if @photo.valid?
        redirect_to [@user, @photo]
      else
        render :new
      end
  end

  def show
      @photo = Photo.find params[:id]
  end
end
