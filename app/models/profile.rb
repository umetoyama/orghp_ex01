class Profile < ApplicationRecord

  validates :position_id, numericality: { other_than: 1, mesages: " can't be blank" }

end
