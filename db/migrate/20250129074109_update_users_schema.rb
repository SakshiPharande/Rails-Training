class UpdateUsersSchema < ActiveRecord::Migration[7.2]
  def change
    if column_exists?(:users, :password)
      rename_column :users, :password, :password_digest
    else
      add_column :users, :password_digest, :string
    end

    add_column :users, :profile_image_url, :string
    add_column :users, :discarded_at, :datetime

    remove_column :users, :encrypted_password, :string
    remove_column :users, :reset_password_sent_at, :datetime
    remove_column :users, :remember_created_at, :datetime
    remove_column :users, :current_sign_in_at, :datetime
    remove_column :users, :last_sign_in_at, :datetime
    remove_column :users, :sign_in_count, :integer
    remove_column :users, :current_sign_in_ip, :string
    remove_column :users, :last_sign_in_ip, :string

    if index_exists?(:users, :reset_password_token)
      remove_index :users, name: "index_users_on_reset_password_token"
    end

    remove_column :users, :reset_password_token, :string
  end
end
