class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]
  before_action :authenticate_user!
  
  def index
    @user = User.all.order(created_at: :desc)
    authorize @user
  end
  
  def show
    @user = User.friendly.find(params[:id])
  end
  
  def edit
    authorize @user
  end
  
  def update
    authorize @user
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