class User < ApplicationRecord
  has_many :users_curriculums
  has_many :curriculums

  validates :u_name, presence: true
  validates :age, presence: true


end
