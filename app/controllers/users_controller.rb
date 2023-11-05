class UsersController < ApplicationController
  def index
    @user = User.all.order(created_at: :desc)
  end
  def show
    @user = User.friendly.find(params[:id])
  end
end