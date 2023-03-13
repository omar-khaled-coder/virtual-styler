class Chatroom < ApplicationRecord
  belongs_to :user
  belongs_to :designer
  has_many :messages
end
