class Packet < ApplicationRecord
  CATEGORIES = [ "Activities for Kids", "Arts and Crafts", "Automotives and Bicycles", "Electronics", "Fashion and Textiles", "Games", "Horticulture and Gardening", "Interior Decorating", "Photography and Media", "Plumbing", "Re-using and Re-cyling", "Self-Care", "Woodworking and Carpentry"]
  # MEDIA_TYPES = ["Photo", "Video", "Text"]
  belongs_to :user
  # validates :media_type, presence: true
  validates :category, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :photos, presence: true
  has_many_attached :photos
  has_one_attached :video
  before_save :render_url

  def render_url
    youtube_url.gsub!('https://www.youtube.com/watch?', '')
  end
end
