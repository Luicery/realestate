class Agent < ApplicationRecord
  has_and_belongs_to_many :properties
  has_one :watch
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
