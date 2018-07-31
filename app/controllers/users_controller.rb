class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
  	@user = User.create(username: params[:user][:username], email: params[:user][:email], bio: params[:user][:bio])
  	if @user.save
      redirect_to action: 'show', id: @user.username
    else render '/users/error'
    end

   	puts "je suis le controller"
  	puts @user.username
  end

  def show
    @user = User.find_by(username: params[:id])
  end
end
