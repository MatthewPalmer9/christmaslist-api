class User < ApplicationRecord
    has_secure_password
    has_many :lists
    has_many :listitems, through: :lists

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

    validates :email, { presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }}
    validates :username, { presence: true, uniqueness: true }
    validates :password, { presence: true, length: { minimum: 8 }, on: :create }
end
