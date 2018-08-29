class AdminController < ApplicationController

  def index
    @admin_show = Admin.all
    @user_show = User.all
    @admin_create = Admin.new
  end

  def show
  end

  def new
  end

  def create
    @admin_create = Admin.new(admin_params)

    respond_to do |format|
      if @admin_create.save
        format.html { redirect_to admin_index_url, notice: 'Admin was successfully created.' }
      else
        format.html { redirect_to admin_index_url, notice: 'Admin wasnt successfully created.'}
        format.json { render json: @admin_create.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @admin_edit = Admin.find(params[:id])
  end

  def update
    @admin_update = Admin.find(params[:id])

    respond_to do |format|
      if @admin_update.update(admin_params)
        format.html { redirect_to admin_index_url, notice: 'Admin was successfully updated.' }
      else
        format.html { redirect_to admin_index_url, notice: 'Admin wasnt successfully updated.'}
        format.json { render json: @admin_update.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @admin_delete = Admin.find(params[:id])
    @admin_delete.destroy

    respond_to do |format|
      if @admin_delete.destroy
        format.html { redirect_to admin_index_url, notice: 'Admin was successfully deleted.' }
      else
        format.html { redirect_to admin_index_url, notice: 'Admin wasnt successfully deleted.'}
        format.json { render json: @admin_delete.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def admin_params 
    params.require(:admin).permit(:user, :password)
  end

end
