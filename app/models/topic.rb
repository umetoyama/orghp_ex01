class Topic < ApplicationRecord

  has_rich_text :content
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true

end
