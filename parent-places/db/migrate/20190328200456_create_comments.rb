class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :user_id #belongs to (created by) this user
      t.integer :place_id #belongs to (made about) this place
    end
  end
end

#comments belong to users (written by them)
#comments belong to places (written about them)

#users can write many comments about many places, so a user
#has many comments through places
