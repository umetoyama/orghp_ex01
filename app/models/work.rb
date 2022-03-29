class Work < ApplicationRecord

  has_one_attached :image

  validates :image, presence: true
  validates :title, presence: true
  validates :movie_link, presence: true, uniqueness: true

end
