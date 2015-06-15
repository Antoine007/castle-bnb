class CreateCastles < ActiveRecord::Migration
  def change
    create_table :castles do |t|

      t.timestamps null: false
    end
  end
end
