class RemoveColumnsFromPetsTable < ActiveRecord::Migration
  def change
    remove_column :pets, :spay_neuter, :boolean
    remove_column :pets, :last_vaccination, :datetime
    remove_column :pets, :last_flea_treatment, :datetime
    remove_column :pets, :last_heartworm_treatment, :datetime
  end
end
