class Tool < ApplicationRecord
  belongs_to :category
  has_many :packet_tools
  has_many :packets, through: :packet_tools
end
