class ChangePlacesDropUserColumn < ActiveRecord::Migration
  def change_table(:places) do |t|
    t.remove :user_id
  end
end
