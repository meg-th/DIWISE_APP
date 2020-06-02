class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @chatrooms = Chatroom.joins(:chatroom_users).where(chatroom_users:{user_id: current_user.id})
    @started_chatrooms = @user.chatrooms.select { |chatroom| chatroom.packet.user != @user }
    @packet_chatrooms = @user.chatrooms.select { |chatroom| chatroom.packet.user == @user }
  end
end
