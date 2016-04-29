class User < ActiveRecord::Base
  has_secure_password

  has_many :user_events
  has_many :events, through: :user_events

  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
end
