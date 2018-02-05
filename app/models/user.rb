class User < ApplicationRecord
  validates :username, presence: true,
                       uniqueness: true


  Email_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    format: {with: Email_REGEX},
                    uniqueness: {case_sensitive: false}

  has_secure_password
end
