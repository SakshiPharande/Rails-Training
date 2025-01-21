class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, null: false
      t.string :phone_no
      t.string :password
      t.integer :role, default: 0

      t.timestamps
    end
    add_index :users, :email, unique: true  # Enforcing unique emails with an index
  end
end
