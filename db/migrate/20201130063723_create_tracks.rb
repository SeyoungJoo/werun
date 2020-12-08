class CreateTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :keyword
      t.float :latitude
      t.string :image
      t.float :longitude
      t.integer :num_likes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
