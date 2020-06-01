class Project < ApplicationRecord
  belongs_to :user
  has_many :project_packets, dependent: :destroy
  has_many :packets, through: :project_packets
  has_many :tools, through :packets, dependent: :destroy
  validates :title, presence: true
end
