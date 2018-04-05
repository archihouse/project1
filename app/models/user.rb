class User < ApplicationRecord
  has_secure_password # uses bcrypt gem to secure password for customer security

  validates :email, :presence => true, :uniqueness => true # to validate email, check email is being submitted, check email is unique (no previous same email)
end
