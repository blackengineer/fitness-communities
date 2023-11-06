class AddSlugToMuscles < ActiveRecord::Migration[7.1]
  def change
    add_column :muscles, :slug, :string
    add_index :muscles, :slug, unique: true
  end
end
