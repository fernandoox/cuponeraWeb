class AddCoverToBusinesses < ActiveRecord::Migration
  def change
    add_attachment :businesses,:cover
  end
end
