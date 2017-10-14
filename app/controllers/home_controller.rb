class HomeController < ApplicationController
  def index
    @users = User.order(:id)
    @other_users = OtherUser.order(:id)
  end
end
