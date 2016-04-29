class User < ActiveRecord::Base
  has_secure_password
  has_many :comments
  has_many :user_events
  has_many :events, through: :user_events

  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true

  def on_guestlist?(event)
    event.users.include?(self)
  end

  def owner?(event)
    self.events.include?(event)
  end

end
