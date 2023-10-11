class ChangePlaceColumnName < ActiveRecord::Migration
  def change
    change_table :places do |t|
      t.rename :user_id, :user
    end
  end
end
