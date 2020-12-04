class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sent_requests, class_name: "Request", foreign_key: :sender_id, dependent: :destroy
  has_many :received_requests, class_name: "Request", foreign_key: :receiver_id, dependent: :destroy

  has_many :user1_events, class_name: "Event", foreign_key: :user1_id, dependent: :destroy
  has_many :user2_events, class_name: "Event", foreign_key: :user2_id, dependent: :destroy
  
  has_many :messages, dependent: :destroy
  has_many :tracks, dependent: :destroy

  has_one_attached :image

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_address,
                  against: [:address],
                  using: {
                    tsearch: { prefix: true } 
                  }
end
