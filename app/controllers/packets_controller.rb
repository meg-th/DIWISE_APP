class PacketsController < ApplicationController
  def index
    if params[:query].present?
      @packets = Packet.search_by_title_and_category(params[:query])
    else 
      @packets = Packet.all
    end 
  end
  
  def new
    @packet = Packet.new
  end

  def create
    @packet = Packet.new(packets_params)
    @packet.user = current_user
    if @packet.save
      redirect_to packets_path
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
    params.require(:packet).permit(:media_type, :category, :title, :description, :media)    
  end

end
