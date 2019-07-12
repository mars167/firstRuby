class User < ApplicationRecord
  has_many :micoposts
  validates :email,:name,presence: true

end
