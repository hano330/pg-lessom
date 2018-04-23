class User < ApplicationRecord
  has_many :users_curriculums
  has_many :curriculums

  validates :u_name, presence: true
  validates :age, presence: true

  def self.search(user)
    #code
    if user
      where(['u_name LIKE :user', user: "%#{user}%"])
    else
      all
    end
  end

end
