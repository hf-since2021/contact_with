class AbsentType < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '欠席' },
    { id: 3, name: '出席扱い' },
    { id: 4, name: '出停忌引' }
  ]

  include ActiveHash::Associations
  has_many :contacts
end