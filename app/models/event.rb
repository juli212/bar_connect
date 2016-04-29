class Event < ActiveRecord::Base
  belongs_to :user
  has_many :event_users
  # has_many :users, through: :event_users, foreign_key: :guest, source: :event
  # has_many :guests, through: :user_events, source: :users
end
