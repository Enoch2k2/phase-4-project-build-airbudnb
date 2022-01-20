class Dog < ApplicationRecord
  has_secure_password # password setter / encrypt_password / authenticate
  has_many :trips
  has_many :dog_houses, through: :trips
end
