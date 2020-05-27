class PacketRatingsController < ApplicationController

  def create
    @packet = Packet.find(paramas[:packet_id])
    @rating = Rating.new(rating_params)
    @rating.user = current_user
    @rating.packet = @packet
    if @rating.save
      rediect_to packet_path(@packet)
    else
      render "packet/show"
    end
  end

  private
  def rating_params
    params.require(:rating).permit(:rating, :packet_i)
  end
end
