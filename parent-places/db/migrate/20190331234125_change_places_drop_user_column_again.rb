class ChangePlacesDropUserColumnAgain < ActiveRecord::Migration
  def change
    change_table :places do |t|
      t.remove :user_id
    end
  end
end
