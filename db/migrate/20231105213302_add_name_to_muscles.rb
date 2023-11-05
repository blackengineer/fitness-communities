class AddNameToMuscles < ActiveRecord::Migration[7.1]
  def change
    add_column :muscles, :name, :string
  end
end
