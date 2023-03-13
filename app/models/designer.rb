class Designer < ApplicationRecord
  has_many :bookings
  has_many :designer_models
  belongs_to :user

  has_many_attached :project_photos
end
