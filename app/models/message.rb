class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user, through: :chatroom
  belongs_to :designer, through: :chatroom
end
