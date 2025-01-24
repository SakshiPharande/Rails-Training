class CreateBreeds < ActiveRecord::Migration[7.2]
  def change
    create_table :breeds do |t|
      t.string :breed_name, null: false
      t.timestamps
    end
  end
end
