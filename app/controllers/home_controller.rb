class HomeController < ApplicationController

  def index
    @admin_show = Admin.all
    @admin_create = Admin.new
    @user_show = User.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
