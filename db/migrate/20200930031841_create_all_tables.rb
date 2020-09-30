class CreateAllTables < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :name
    end

    create_table :neighborhoods do |t|
      t.string :name
      t.integer :city_id #####
    end

    create_table :users do |t|
      t.string :name
    end
    
    create_table :listings do |t|
      t.string :address
      t.string :listing_type
      t.string :title
      t.text :description
      t.float :price
      t.integer :neighborhood_id #####
      t.integer :host_id  ######
    end

    create_table :reservations do |t|
      t.string :checkin  ####
      t.string :checkout ######
      t.integer :listing_id
      t.integer :guest_id
    end

    create_table :reviews do |t|
      t.text :description
      t.integer :rating
      t.integer :guest_id
      t.integer :reservation_id
    end
  end
end
