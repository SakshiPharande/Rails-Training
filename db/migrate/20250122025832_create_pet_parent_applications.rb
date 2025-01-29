class CreatePetParentApplications < ActiveRecord::Migration[7.2]
  def change
    create_table :pet_parent_applications do |t|
      t.string :address
      t.string :phone_no
      t.integer :status, default: 0  # Enum: 0 = available , 1=unavilable
      t.references :user, null: false, foreign_key: true  # Adds foreign key to the users table
      t.references :pet, null: false, foreign_key: true  # Adds foreign key to the pets table
      t.timestamps
    end
  end
end
