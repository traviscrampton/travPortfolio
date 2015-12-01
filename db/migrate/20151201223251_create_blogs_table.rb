class CreateBlogsTable < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.column :title, :string
      t.column :date, :string
      t.column :distance, :string
      t.column :time, :string
      t.column :travelimage, :string
    end
  end
end
