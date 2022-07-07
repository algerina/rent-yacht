class User < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_one_attached :image

  enum role: {
    user: 'user',
    admin: 'admin'
  }
end
