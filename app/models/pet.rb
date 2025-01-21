class Pet < ApplicationRecord
  belongs_to :breed
  belongs_to :category

  enum gender: { male: 0, female: 1, unknown: 2 }
  enum status: { pending: 0, accepted: 1, rejected: 2 }

  validates :breed_id, presence: true
  validates :category_id, presence: tru
end
