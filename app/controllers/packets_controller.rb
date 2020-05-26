class PacketsController < ApplicationController
  def new
    @packet = Packet.new
  end
  
end
