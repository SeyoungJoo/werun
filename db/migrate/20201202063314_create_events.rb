class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :user1_id
      t.integer :user2_id

      t.timestamps
    end
  end
end
