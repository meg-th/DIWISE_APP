class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @sample_image = ["image002", "image003", "image004", "image005", "image006"]
    @chatrooms = Chatroom.joins(:chatroom_users).where(chatroom_users:{user_id: current_user.id})
    @started_chatrooms = @user.chatrooms.select { |chatroom| chatroom.packet.user != @user }
    @packet_chatrooms = @user.chatrooms.select { |chatroom| chatroom.packet.user == @user }
  end
end
