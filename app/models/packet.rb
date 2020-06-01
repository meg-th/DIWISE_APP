class Packet < ApplicationRecord
  before_save :render_url
  belongs_to :user
  belongs_to :category
  belongs_to :tool
  has_many :packet_ratings
  has_many_attached :photos

  validates :category, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :photos, presence: true
  validates :tools, presence: true


  include PgSearch::Model
  pg_search_scope :search_by_title_and_category,
      against: [ :title, :category_id ],
      using: {tsearch: { prefix: true }}

  def render_url
    youtube_url.gsub!('https://www.youtube.com/watch?v=', '')
  end

  def rating
    packet_ratings.count
  end

end

