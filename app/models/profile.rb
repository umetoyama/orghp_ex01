class Profile < ApplicationRecord

  belongs_to :user, optional: true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :position
  has_one_ attached :image

  validates :position_id, numericality: { other_than: 1, mesages: " can't be blank" }

end
