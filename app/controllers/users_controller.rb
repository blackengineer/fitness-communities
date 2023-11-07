class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]
  before_action :authenticate_user!
  
  def index
    @user = User.all.order(created_at: :desc)
  end
  
  def show
    @user = User.friendly.find(params[:id])
  end
  
  def edit
  end
  
  def update
    if @user.update(user_params)
      redirect_to users_path, notice: "Athlete roles were successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  private

  def set_user
    @user = User.friendly.find(params[:id])
  end

  def user_params
    params.require(:user).permit({role_ids: []})
  end
end