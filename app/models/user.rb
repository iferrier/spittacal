class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :registerable, :trackable and :omniauthable
  devise :database_authenticatable, :recoverable,
          :rememberable, :validatable, :invitable

  belongs_to :flat
  belongs_to :building
  has_many :templates, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
