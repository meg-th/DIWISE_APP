class PacketRatingsController < ApplicationController

  def create
    @packet = Packet.find(params[:packet_id])
    @rating = PacketRating.new
    @rating.user = current_user
    @rating.packet = @packet
    if @rating.save
      redirect_to packets_path(anchor: "packet-#{@packet.id}")
    else
      render "packet/index"
    end
  end
end
