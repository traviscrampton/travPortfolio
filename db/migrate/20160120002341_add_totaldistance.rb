class AddTotaldistance < ActiveRecord::Migration
  def change
    add_column :blogs, :totaldistance, :string
  end
end
