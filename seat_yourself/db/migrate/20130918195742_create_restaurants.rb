class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
    	t.string :name
    	t.text :description
    	t.string :address
    	t.string :cuisine
    	t.string :url

      t.timestamps
    end
  end
end
