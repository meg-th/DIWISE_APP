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
      redirect_to  packets_path
    else
      render :new
    end
  end
  
  private

  def packets_params
    params.require(:packet).permit(:media_type, :category, :title, :description)    
  end

end
