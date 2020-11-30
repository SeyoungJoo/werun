class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string :status
      t.integer :receiver_id
      t.integer :sender_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
