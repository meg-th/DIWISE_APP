class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @chatrooms = Chatroom.joins(:chatroom_users).where(chatroom_users:{user_id: current_user.id})
  end
end
