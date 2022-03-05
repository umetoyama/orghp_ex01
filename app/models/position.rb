class Position < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'Chairman' },
    { id: 3, name: 'President' },
    { id: 4, name: 'Producer' },
    { id: 5, name: 'Director' },
    { id: 6, name: 'Project-manager' },
    { id: 7, name: 'Project-assistant' },
    { id: 9, name: 'Manager' },
    { id: 10, name: 'Desk' }
  ]

  include ActiveHash::Associations
  has_many :positions

end