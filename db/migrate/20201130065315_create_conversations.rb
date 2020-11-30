class CreateConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :conversations do |t|
      t.integer :user1_id
      t.integer :user2_id

      t.timestamps
    end
  end
end
