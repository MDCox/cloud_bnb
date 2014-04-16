class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.integer :renter_id
      t.integer :property_id
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
