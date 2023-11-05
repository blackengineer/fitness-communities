class AddFieldsToPrograms < ActiveRecord::Migration[7.1]
  def change
    add_column :programs, :level, :string, default: "Beginner", null: false
    add_column :programs, :price, :integer, default: "0", null: false
    add_column :programs, :short_description, :text
  end
end
