class UsersController < ApplicationController
  def gravatar_for
  	
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
    @user = User.new(params[:user])    # Not the final implementation!
    if @user.save
      flash[:success] = "Welcome to the Sample App, dude!  Do you like my Hat?"
      redirect_to @user
    else
      render 'new'
    end
  end
end
