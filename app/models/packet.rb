class Packet < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :category, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :photos, presence: true
  has_many_attached :photos
  has_one_attached :video
  before_save :render_url
  has_many :packet_ratings

  include PgSearch::Model
  pg_search_scope :search_by_title_and_category,
      against: [ :title, :category ],
      using: {tsearch: { prefix: true }}

  def render_url
    youtube_url.gsub!('https://www.youtube.com/watch?v=', '')
  end

  def rating
    packet_ratings.count
  end

end

