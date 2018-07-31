class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
      #method pour le formulaire form_for
  	@user = User.create(username: params[:user][:username], email: params[:user][:email], bio: params[:user][:bio])
      #method pour le formulaire form et form_tag
    #@user = User.create(username: params[:username], email: params[:email], bio: params[:bio])
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
