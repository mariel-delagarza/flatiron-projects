class RemoveMoreColumnsFromPetsTable < ActiveRecord::Migration
  def change
    remove_column :pets, :allergies, :string
    remove_column :pets, :food_brand, :string
    remove_column :pets, :food_serving, :string
    remove_column :pets, :feedings_per_day, :string
    remove_column :pets, :comments, :text
  end
end
