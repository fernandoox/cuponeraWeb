class AddStatusTypeIdToStatuses < ActiveRecord::Migration
  def change
    add_reference :statuses, :status_type, index: true, foreign_key: true
  end
end
