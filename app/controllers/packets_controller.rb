require 'open-uri'

class PacketsController < ApplicationController
  def index
    if params[:query].present?
      @packets = Packet.search_by_title_and_category(params[:query])
    else
      @packets = Packet.all.sort_by{|packet| -packet.rating}
    end
  end

  def new
    @packet = Packet.new
  end

  def create
    @packet = Packet.new(packets_params)
    @packet.user = current_user
    if @packet.save
      uploaded_file = Cloudinary::Uploader.upload_large(params[:packet][:video].tempfile, :resource_type => :video)
      @packet.update!(video: uploaded_file['secure_url'])
      redirect_to packets_path
    else
      render :new
    end
  end

  def show
    @packet = Packet.find(params[:id])
    @project_packet = ProjectPacket.new

    respond_to do |format|
      format.html
      format.json { render json: { packet: @packet } }
    end
  end

  def add_vote
    @packet = Packet.find(params[:packet_id])
    @packet.vote += 1
    if @packet.save
      # redirect_to  packets_path
      respond_to do |format|
        format.js
      end
    end

  end

  private

  def packets_params
    params.require(:packet).permit(:category, :title, :description, :youtube_url, photos: [])
  end

end
