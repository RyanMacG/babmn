class User < ActiveRecord::Base

  has_secure_password

  before_save { email.downcase }
  validates_presence_of :name
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_format_of :email, with: VALID_EMAIL_REGEX, message: 'Must be a valid email address'
  validates_uniqueness_of :email, case_sensitive: false, message: 'Sorry this email is already taken'
end
