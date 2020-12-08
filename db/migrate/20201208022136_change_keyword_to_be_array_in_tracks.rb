class ChangeKeywordToBeArrayInTracks < ActiveRecord::Migration[6.0]
  def change
    change_column :tracks, :keyword, :text, array: true, default: [], using: "(string_to_array(keyword, ','))"
  end
end
