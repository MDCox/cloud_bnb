class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :owner_id
      t.string :location
      t.decimal :price, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
