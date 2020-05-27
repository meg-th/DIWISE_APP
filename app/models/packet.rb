class Packet < ApplicationRecord
  CATEGORIES = [ "Activities for Kids", "Arts and Crafts", "Automotives and Bicycles", "Electronics", "Fashion and Textiles", "Games", "Horticulture and Gardening", "Interior Decorating", "Photography and Media", "Plumbing", "Re-using and Re-cyling", "Self-Care", "Woodworking and Carpentry"]
  MEDIA_TYPES = ["Photo", "Video", "Text"]
  belongs_to :user
  validates :media_type, presence: true
  validates :category, presence: true
  validates :title, presence: true
  validates :description, presence: true
  # has_one_attached :media

  include PgSearch::Model
  pg_search_scope :search_by_title_and_category,
      against: [ :title, :category ],
      using: {tsearch: { prefix: true }}
end

