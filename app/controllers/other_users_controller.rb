class OtherUsersController < ApplicationController
  before_action :set_other_user

  def update
    @other_user.touch(:updated_at)
    redirect_to root_path
  end

  private

  def set_other_user
    @other_user = OtherUser.find(params[:id])
  end
end
