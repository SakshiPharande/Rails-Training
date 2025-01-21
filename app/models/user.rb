class User < ApplicationRecord
   # Enum for role with user and admin as possible values
   enum role: { user: 0, admin: 1 }
end
