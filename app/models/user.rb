class User < ApplicationRecord
  validates :u_name, presence: true
  validates :age, presence: true
end
