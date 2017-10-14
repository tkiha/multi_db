class UsersController < ApplicationController
  before_action :set_user

  def update
    @user.touch(:updated_at)
    redirect_to root_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
