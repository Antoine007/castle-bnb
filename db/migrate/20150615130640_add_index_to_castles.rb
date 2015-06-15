class AddIndexToCastles < ActiveRecord::Migration
  def change
    add_column :castles, :index, :int
  end
end
