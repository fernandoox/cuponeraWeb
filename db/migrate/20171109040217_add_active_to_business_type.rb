class AddActiveToBusinessType < ActiveRecord::Migration
  def change
    add_column :business_types, :active, :boolean
  end
end
