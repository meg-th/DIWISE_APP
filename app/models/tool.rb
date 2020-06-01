class Tool < ApplicationRecord
  has_many :packets
  belongs_to :category
end
