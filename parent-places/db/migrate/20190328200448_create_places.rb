class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.integer :zip
      t.boolean :changing_tables_women
      t.boolean :changing_tables_men
      t.boolean :high_chairs
      t.boolean :slings_for_carseats
      t.boolean :family_restrooms
      t.boolean :nursing_rooms
      t.integer :user_id #made by this user
    end
  end
end

#a place has many comments
#a place belongs to (is created by) a user
