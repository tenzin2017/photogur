class Picture < ApplicationRecord
  belongs_to :user
  validates :artist, :title, :url, presence: true
  validates :title , length: { in: 3..20 }
  validates :url, uniqueness: true

  def self.newest_first
    Picture.order("created_at DESC")
  end

  def self.most_recent_five
    Picture.newest_first.limit(5)
  end

  def self.created_before(time)
    Picture.where("created_at < ?", time)
  end

  def self.created_in_year(year)
    Picture.where(:created_at => year.beginning_of_year..year.end_of_year)
end
end
