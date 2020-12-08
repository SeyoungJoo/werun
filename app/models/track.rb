class Track < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :likes, dependent: :destroy
  def liked?(user)
    !!self.likes.find{ |like| like.user_id == user.id}
  end

  include PgSearch::Model
  pg_search_scope :search_by_address,
                  against: [:address],
                  using: {
                    tsearch: { prefix: true } 
                  }
end
