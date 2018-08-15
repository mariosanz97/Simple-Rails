class AdminController < ApplicationController

  def index
    @admin = Admin.all
    @adminc = Admin.new
  end

  def show
  end

  def new
  end

  def create
    @adminc = Admin.new(admin_params)

    respond_to do |format|
      if @adminc.save
        format.html { redirect_to admin_index_url, notice: 'Admin was successfully created.' }
      else
        format.html { redirect_to admin_index_url, notice: 'Admin wasnt successfully created.'}
        format.json { render json: @adminc.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def admin_params 
      params.require(:admin).permit(:user, :password)
    end

end
