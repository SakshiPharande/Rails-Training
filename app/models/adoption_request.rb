class AdoptionRequest < ApplicationRecord
  belongs_to :pet, foreign_key: :pet_id
  belongs_to :breed, foreign_key: :breed_id
  belongs_to :user, foreign_key: :u_id

  enum status: { pending: 0, rejected: 2, accepted: 1 }

  validates :pet_id, :breed_id, :u_id, presence: true
end
