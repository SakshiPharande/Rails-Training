class CreateAdoptionRequests < ActiveRecord::Migration[7.2]
  def change
    create_table :adoption_requests do |t|
      t.references :pet, null: false, foreign_key: true
      t.references :breed, null: false, foreign_key: true
      t.datetime :adoption_date
      t.integer :u_id, null: false  # Add user_id column manually
      t.string :address
      t.string :phone_no
      t.string :email
      t.integer :status, default: 0 # Enum: 0 = pending, 1 = accepted, 2 = rejected

      t.timestamps
    end
      # Add a foreign key constraint manually for u_id
      add_foreign_key :adoption_requests, :users, column: :u_id
  end
end
