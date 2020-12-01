class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :sent_requests, class_name: "Request", foreign_key: :sender, dependent: :destroy
  has_many :received_requests, class_name: "Request", foreign_key: :receiver, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :tracks, dependent: :destroy
end
