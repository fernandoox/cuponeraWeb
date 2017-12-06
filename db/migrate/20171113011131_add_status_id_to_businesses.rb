class AddStatusIdToBusinesses < ActiveRecord::Migration
  def change
    add_reference :businesses, :status, index: true, foreign_key: true
  end
end
