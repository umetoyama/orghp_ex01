class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile

  PASSWORD_RULES = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i

  validates :name, presence: true
  validates :password, format: { with: PASSWORD_RULES, mesage: ' is Alphanumeric characters only' }

end
