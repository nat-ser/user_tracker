# frozen_string_literal: true
class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user, only: [:edit, :update]

  def index
    @users = User.all
  end

  def edit; end

  def update
    if @user.update(user_params)
      @user.save
      flash[:success] = "Updated successfully"
    else
      flash[:error] = "Oops, something went wrong."
    end
    redirect_to users_path
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :fave_game)
  end
end
