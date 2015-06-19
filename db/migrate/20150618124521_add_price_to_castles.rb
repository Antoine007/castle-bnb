class AddPriceToCastles < ActiveRecord::Migration
  def change
    add_column :castles, :price, :int
  end
end
