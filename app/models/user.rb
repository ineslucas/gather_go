class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_one_attached :profile_picture
  # mount_uploader :profile_picture, User::ProfilePictureUploader

  attr_accessor :profile_picture
end
