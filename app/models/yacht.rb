class Yacht < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
end
