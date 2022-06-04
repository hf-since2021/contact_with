class RequestType < ActiveHash::Base
  self.data = [
    # { id: 1, name: '---' },
    { id: 1, name: '欠席' },
    { id: 2, name: '遅刻' },
    { id: 3, name: '早退' }
  ]

  include ActiveHash::Associations
  has_many :contacts
end

# ラジオボタンにするならActiveHashにする必要はなかったかもしれない