class User < ActiveRecord::Base
  validates :username, :first_name, presence: true
end
