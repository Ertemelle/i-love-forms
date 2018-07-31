class UsersController < ApplicationController
  def new
    puts "je suis le controller"
  end

  def create
  	@user = User.create(username: params[:username], email: params[:email], bio: params[:bio])
  	if @user.save
      redirect_to action: 'show', id: @user.username
      else render '/users/error'
    end
   	puts "je suis le controller"
  	puts @user.username
  end
end
