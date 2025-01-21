class Breed < ApplicationRecord
  validates :breed_name, presence: true
end
