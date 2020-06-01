class PacketToolsController < ApplicationController
  def create
    @packet = Packet.find(params[:packet_id])
    @packet_tool = PacketTool.new
    @packet_tool.packet = @packet
    @packet_tool.tool = Tool.find(params["packet_tool"]["tool"])
    if @packet_tool.save
      redirect_to packets_path(anchor: "packet-#{@packet.id}")
    else
      render "packet/index"
    end
  end

end
