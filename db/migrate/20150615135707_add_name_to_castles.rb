class AddNameToCastles < ActiveRecord::Migration
  def change
    add_column :castles, :name, :string
    add_column :castles, :address, :string
    add_column :castles, :description, :text
    add_column :castles, :beds, :int
    add_column :castles, :lord_id, :string
    add_column :castles, :int, :string
  end
end
