class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
    	t.datetime :spot
    	t.integer :size
    	t.integer :restaurant_id
    	t.integer :user_id

      t.timestamps
    end
  end
end