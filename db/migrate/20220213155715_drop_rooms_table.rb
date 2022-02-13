class DropRoomsTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :rooms
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
  
end
