class UsersController < ApplicationController
  def index
      @users = User.all
  end

  def new
      @user = User.new
  end

  def create
      @user = User.create(params[:user])
      redirect_to @user
  end

  def edit
  end

  def show
  end
end
