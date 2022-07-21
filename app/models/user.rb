class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  enum role: %i[user admin]
  after_initialize :set_default_role, if: :new_record?

  has_many :reservations, dependent: :destroy
  has_one_attached :image

  validates :username, uniqueness: { case_sensitive: false }

  def set_default_role
    self.role ||= :user
  end

  def image_url
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
  end
end
