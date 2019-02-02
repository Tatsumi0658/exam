class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.integer :rent
      t.string :address
      t.integer :age
      t.text :remarks

      t.timestamps
    end
  end
end
