class Like < ApplicationRecord
  belongs_to :user_id
  belongs_to :track_id
end
