class User < ApplicationRecord
  before_save {self.email.downcase! }
  has_secure_password
  has_many :tasks
end
