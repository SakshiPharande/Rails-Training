class CreateCategories < ActiveRecord::Migration[7.2]
  def change
    create_table :categories do |t|
      t.string :name, null: false  # Name of the pet category (e.g., Dog, Cat, Bird)
      t.timestamps
    end
  end
end
