class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]

  def show
    @user = User.find(params[:id])
    @user.build_profile if @user.profile == nil
  end
  
  def edit
    @user = User.find(params[:id])
    unless @user == current_user
      flash[:alert] = '編集権限がありません'
      redirect_to root_path
    end

    @profile = @user.profile || @user.build_profile
  end

  def update
  end
end
