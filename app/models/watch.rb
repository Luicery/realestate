class Watch < ApplicationRecord
  has_and_belongs_to_many :properties
  has_and_belongs_to_many :users
  has_and_belongs_to_many :agents
end
