class AddAddressIdToBusinesses < ActiveRecord::Migration
  def change
    add_reference :businesses, :address, index: true
    add_foreign_key :businesses, :addresses
  end
end
