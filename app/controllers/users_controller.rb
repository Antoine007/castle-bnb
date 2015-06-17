class UsersController < ApplicationController
  before_action :find_user,   only: [:show]

  def show
  end

  def new
  end

  def create
    @user = User.new(user_param)
    @user.save
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
  def user_param
    params[:user]
  end
end
