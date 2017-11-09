class ChangePrecisionLatLng < ActiveRecord::Migration
  def change
    change_column :addresses, :latitude, :decimal, :precision => 22, :scale => 16
    change_column :addresses, :longitude, :decimal, :precision => 22, :scale => 16
  end
end
