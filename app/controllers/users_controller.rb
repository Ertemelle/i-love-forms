class UsersController < ApplicationController
  def new
  end

  def create
  	@user = User.create
  	@user.username = params[:username]
  	@user.email = params[:email]
  	@user.bio = params[:bio]

  end
end
