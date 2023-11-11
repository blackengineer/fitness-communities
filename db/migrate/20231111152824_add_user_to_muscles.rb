class AddUserToMuscles < ActiveRecord::Migration[7.1]
  def change
    add_reference :muscles, :user, null: false, foreign_key: true
  end
end
