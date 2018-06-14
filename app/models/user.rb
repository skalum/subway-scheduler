class User < ApplicationRecord
  has_secure_password

  has_many :routes
  has_many :addresses, through: :routes

  def full_name
    self.first_name + " " + self.last_name
  end
end
