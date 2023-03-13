class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true, length: { maximum: 20 }
  validates :last_name, presence: true, length: { maximum: 50 }

  has_many :designer_models, through: :designer

  has_one_attached :avatar
  has_one :cart
  has_one :designer

end

# Path: app/controllers/application_controller.rb
