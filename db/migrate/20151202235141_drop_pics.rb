class DropPics < ActiveRecord::Migration
  def change
    drop_table :pics
    drop_table :descriptions
  end
end
