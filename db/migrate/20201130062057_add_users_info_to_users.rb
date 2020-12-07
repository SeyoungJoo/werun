class AddUsersInfoToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :age, :integer
    add_column :users, :level, :string
    add_column :users, :lng, :float
    add_column :users, :lat, :float
  end
end
