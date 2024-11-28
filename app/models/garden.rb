class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy # garden.plants (an array of plants)
end
