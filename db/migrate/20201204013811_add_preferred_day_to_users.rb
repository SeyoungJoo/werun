class AddPreferredDayToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :preferred_day, :string
  end
end
