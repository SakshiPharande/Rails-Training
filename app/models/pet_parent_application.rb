class PetParentApplication < ApplicationRecord
  belongs_to :user, foreign_key: :u_id
  belongs_to :pet, foreign_key: :p_id

  enum status: { pending: 0, accepted: 1, rejected: 2 }

  validates :u_id, :p_id, presence: true
end
