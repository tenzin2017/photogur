class User < ApplicationRecord
  has_secure_password
  has_many :pictures
  validates :email, :password, :password_confirmation, presence: true
end
