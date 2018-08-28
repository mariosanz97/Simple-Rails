class UserController < ApplicationController

  def index
    @user = User.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "Successfully created User." 
      redirect_to admin_index_path
    else
      redirect_to admin_index_path
    end
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
  end

end