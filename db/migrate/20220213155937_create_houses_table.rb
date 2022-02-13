class CreateHousesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :houses_tables do |t|
      t.string :name
      t.integer :user_id
      t.text :address
      t.text :description

      t.timestamps
    end
  end
end
