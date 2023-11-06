class AddSlugToMovements < ActiveRecord::Migration[7.1]
  def change
    add_column :movements, :slug, :string
    add_index :movements, :slug, unique: true
  end
end
