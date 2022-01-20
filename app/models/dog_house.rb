class DogHouse < ApplicationRecord
  has_many :trips
  has_many :dogs, through: :trips
end
