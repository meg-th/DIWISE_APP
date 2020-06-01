class Category < ApplicationRecord
  has_many :packets
  has_many :tools, through: :packets
end
