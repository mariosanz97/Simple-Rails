class UserController < ApplicationController

  def index
    @user_create = User.new
  end

  def new
  end

  def edit
    @user_edit = User.find(params[:id])
  end

  def update
    @user_update = User.find(params[:id])

    respond_to do |format|
      if @user_update.update(user_params)
        format.html { redirect_to admin_index_url, notice: 'Admin was successfully updated.' }
      else
        format.html { redirect_to admin_index_url, notice: 'Admin wasnt successfully updated.'}
        format.json { render json: @user_update.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @user_create = User.new(user_params)

    if @user_create.save
      flash[:notice] = "Successfully created User." 
      redirect_to admin_index_path
    else
      redirect_to admin_index_path
    end
  end

  def destroy
    @user_delete = User.find(params[:id])
    @user_delete.destroy

    respond_to do |format|
      if @user_delete.destroy
        format.html { redirect_to admin_index_url, notice: 'Admin was successfully deleted.' }
      else
        format.html { redirect_to admin_index_url, notice: 'Admin wasnt successfully deleted.'}
        format.json { render json: @user_delete.errors, status: :unprocessable_entity }
      end
    end
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
  end

end