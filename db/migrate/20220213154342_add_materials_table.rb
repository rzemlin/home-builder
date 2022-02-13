class AddMaterialsTable < ActiveRecord::Migration[6.1]
  
  def change
    create_table :materials do |t|
      t.string :name
      t.integer :quantity
      t.text :description
    end
  end
end
