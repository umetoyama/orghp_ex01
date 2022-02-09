class Profile < ApplicationRecord

  belongs_to :user, optional: true
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :position

  validates :position_id, numericality: { other_than: 1, mesage: " can't be blank" }
  validates :image, presence: true

end
