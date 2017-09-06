class Picture < ApplicationRecord

  validates :artist, :title, presence: true
  validates :title , length: { in: 3..20 }

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
                  #  extract(year from created_at) = ?   and extract(month from created_at) = ?', '2013','7')


end
