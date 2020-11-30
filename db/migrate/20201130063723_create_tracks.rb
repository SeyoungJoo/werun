class CreateTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :keyword
      t.float :start_lng
      t.float :start_lat
      t.float :end_lng
      t.float :end_lat
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
