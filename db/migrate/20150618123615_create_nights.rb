class CreateNights < ActiveRecord::Migration
  def change
    create_table :nights do |t|
      t.references :castle, index: true, foreign_key: true
      t.references :booking, index: true, foreign_key: true
      t.date :not_available

      t.timestamps null: false
    end
  end
end
