class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.reference :user

      t.timestamps
    end
  end
end
