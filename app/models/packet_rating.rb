class PacketRating < ApplicationRecord
  belongs_to :packet
  belongs_to :user

  validates :rating, presence: true, numericality: {only_integer: true}, inclusion: { in: [*0..10] }
end
