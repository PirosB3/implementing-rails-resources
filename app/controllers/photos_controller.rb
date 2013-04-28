class PhotosController < ApplicationController
  def index
      @user = User.find(params[:user_id])
      @photos = @user.photos.all
  end

  def new
      @user = User.find(params[:user_id])
      @photo = @user.photos.new
  end
end
