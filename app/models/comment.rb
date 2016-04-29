class Comment < ActiveRecord::Base
  belongs_to :events

  validates :body, presence: true
end
