class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :ext_number
      t.string :int_number
      t.integer :postal_code
      t.decimal :latitude, precision: 22, scale: 16
      t.decimal :longitude, precision: 22, scale: 16
      t.string :colony
      t.string :municipality
      t.string :state
      t.timestamps null: false
    end
  end
end
