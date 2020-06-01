class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @packet = Packet.find(params[:packet_id])
    @chatroom = Chatroom.create(name: @packet.title)
    @chatroom.packet = @packet
    ChatroomUser.create(chatroom: @chatroom, user: current_user)
    ChatroomUser.create(chatroom: @chatroom, user_id: params[:packet_user_id])
    redirect_to @chatroom
  end
end
