class User < ApplicationRecord
   # has_secure_password
   validates :email, presence: true, uniqueness: true
   # enum role: [ :user, :admin ] # user:0 admin:1
   enum role: { user: 0, admin: 1 }
end
