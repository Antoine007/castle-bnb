class AddCoordinatesToCastles < ActiveRecord::Migration
  def change
    add_column :castles, :latitude, :float
    add_column :castles, :longitude, :float
  end
end
