class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :flat
  belongs_to :building
  has_many :templates, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
