class AddMoreInfoToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :gender, :string
    add_column :users, :preferred_time, :string
    add_column :users, :pet, :boolean
    add_column :users, :introduction, :text
  end
end
