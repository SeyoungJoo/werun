class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :lng, :longitude
    rename_column :users, :lat, :latitude
  end
end
