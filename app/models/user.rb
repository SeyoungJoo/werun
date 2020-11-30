class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :sent_requests, class_name: "Request", source: :sender
  has_many :received_requests, class_name: "Request", source: :receiver
  has_many :messages
  has_many :tracks
end
