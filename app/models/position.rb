class Position < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '代表' },
    { id: 3, name: 'プロデューサー' },
    { id: 4, name: 'ディレクター' },
    { id: 5, name: 'プロジェクトマネージャー' },
    { id: 6, name: 'プロジェクトアシスタント' },
    { id: 7, name: 'デスク' }
  ]

  include ActiveHash::Associations
  has_many :positions

end