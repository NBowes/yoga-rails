class User < ApplicationRecord
  has_secure_password
  has_many :poses
end
