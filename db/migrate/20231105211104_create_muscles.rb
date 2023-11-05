class CreateMuscles < ActiveRecord::Migration[7.1]
  def change
    create_table :muscles do |t|
      t.text :origin
      t.text :insertion
      t.text :concentric
      t.text :eccentric
      t.text :isometric
      t.text :innervation
      t.text :blood_supply

      t.timestamps
    end
  end
end
