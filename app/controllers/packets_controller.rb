class PacketsController < ApplicationController
  def new
    @packet = Packet.new
  end

  def create
    @packet = Packet.new(packets_params)
    @packet.user = current_user
    if @packet.save

  end
  
  private

  def packets_params
    params.require    
  end
  
end
