class AdoptionRequest < ApplicationRecord
  belongs_to :pet
  belongs_to :breed
  belongs_to :user, foreign_key: :u_id

  enum status: { pending: 0, rejected: 2, accepted: 1 }

  validates :pet_id, :breed_id, :u_id, presence: true
end
