class CreatePets < ActiveRecord::Migration[7.2]
  def change
    create_table :pets do |t|
      t.references :breed, null: false, foreign_key: true
      t.integer :age
      t.integer :gender, default: 2
      t.string :temperament
      t.boolean :vaccination_status, default: false
      t.text :medical_history
      t.integer :status, default: 0
      t.references :category, null: false, foreign_key: true
      t.text :common_health_issues

      t.timestamps
    end

    add_foreign_key :pets, :breeds, column: :breed_id
    add_foreign_key :pets, :categories, column: :category_id
  end
end
