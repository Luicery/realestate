class Rent < ApplicationRecord
  has_and_belongs_to_many :agents
  has_and_belongs_to_many :watches
  has_many :imagerents
end
