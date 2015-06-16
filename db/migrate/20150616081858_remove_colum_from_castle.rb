class RemoveColumFromCastle < ActiveRecord::Migration
  def change
    remove_column :castles, :int
  end
end
