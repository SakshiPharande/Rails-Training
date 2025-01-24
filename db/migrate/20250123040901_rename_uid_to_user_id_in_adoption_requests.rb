class RenameUidToUserIdInAdoptionRequests < ActiveRecord::Migration[7.2]
  def change
    rename_column :adoption_requests, :u_id, :user_id
  end
end
