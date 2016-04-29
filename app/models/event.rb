class Event < ActiveRecord::Base
  belongs_to :user
  has_many :user_events
  has_many :guests, through: :user_events, source: :event
end
