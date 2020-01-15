class Watch < ApplicationRecord
  has_and_belongs_to_many :properties, optional:true
  belongs_to :user, optional:true
  belongs_to :agent, optional:true
end
