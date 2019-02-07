class User < ApplicationRecord
  validates_presence_of :name, :email, :password

  def self.authenticate(email, password)
    if user = User.find_by(email: email, password: password)
      user
    end
  end

end
