class UserEvent < ActiveRecord::Base
  belongs_to :guest, foreign_key: :user
  belongs_to :event
end
