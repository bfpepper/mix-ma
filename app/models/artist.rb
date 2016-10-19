class Artist < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :image_path, presence: true

  has_many :songs

  def sorted_songs
    songs.order('title ASC')
  end
end
