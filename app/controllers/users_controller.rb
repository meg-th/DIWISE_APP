class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @sample_image = ["paint.jpg", "hanging-bulbs.jpg", "image004.jpg", "image005.jpg", "image006.jpg"]
    @chatrooms = Chatroom.joins(:chatroom_users).where(chatroom_users:{user_id: current_user.id})
    @started_chatrooms = @user.chatrooms.select { |chatroom| chatroom.packet.user != @user }
    @packet_chatrooms = @user.chatrooms.select { |chatroom| chatroom.packet.user == @user }
  end
end
