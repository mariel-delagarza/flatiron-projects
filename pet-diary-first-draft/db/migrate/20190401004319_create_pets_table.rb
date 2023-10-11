class CreatePetsTable < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :breed
      t.boolean :spay_neuter
      t.string :microchip_number
      t.string :microchip_registry
      t.string :vet_name
      t.string :vet_phone
      t.datetime :last_vaccination
      t.text :vaccinations
      t.datetime :last_flea_treatment
      t.string :flea_treatment_type
      t.datetime :last_heartworm_treatment
      t.string :heartworm_treatment_type
      t.string :allergies
      t.string :food_brand
      t.string :food_serving
      t.string :feedings_per_day
      t.text :comments
    end
  end
end
