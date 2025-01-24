class AddCategoryIdToBreeds < ActiveRecord::Migration[7.2]
  def change
    add_column :breeds, :category_id, :integer, null: false
    remove_foreign_key :breeds, column: :category_id
    add_foreign_key :breeds, :categories, column: :category_id
  end
end
