class Project < ApplicationRecord
  belongs_to :user
  has_many :project_packets, dependent: :destroy
  validates :title, presence: true
end
