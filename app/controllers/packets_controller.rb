class PacketsController < ApplicationController
  def index
    @packets = Packet.all
  end

  def new
    @packet = Packet.new
  end

  def create
    @packet = Packet.new(packets_params)
    @packet.user = current_user
    if @packet.save
      redirect_to packet_path(@packet)
    else
      render :new
    end
  end

  def show
    @packet = Packet.find(params[:id])
    @project_packet = ProjectPacket.new
  end


  private

  def packets_params
    params.require(:packet).permit(:category, :title, :description, :video, :youtube_url, photos: [])
  end

end
