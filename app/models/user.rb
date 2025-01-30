class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include Discard::Model
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   # has_secure_password
   validates :email, presence: true, uniqueness: true
   # enum role: [ :user, :admin ] # user:0 admin:1
   enum role: { user: 0, admin: 1 }
end
