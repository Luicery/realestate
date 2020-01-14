class User < ApplicationRecord
  has_one :watch
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
