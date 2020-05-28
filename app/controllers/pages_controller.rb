class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @packets = Packet.order(vote: :desc).limit(3)
  end
end
