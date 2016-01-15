class EditColumn < ActiveRecord::Migration
  def change
    rename_column :descripts, :photo_id, :pic_id
  end
end
