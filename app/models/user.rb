class User < ApplicationRecord
   has_secure_password
   validates :email, presence: true, uniqueness: true
   enum role: { user: 0, admin: 1 }
end
