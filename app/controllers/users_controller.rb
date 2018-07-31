class UsersController < ApplicationController
  def new
    puts "je suis le controller"
  end

  def create
  	@user = User.create(username: params[:username], email: params[:email], bio: params[:bio])
  	puts "je suis le controller"
  	puts @user.username
  end
end
