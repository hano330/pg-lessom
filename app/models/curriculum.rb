class Curriculum < ApplicationRecord
  has_many :users_curriculums
  has_many :users

  validates :c_name, presence: true
  validates :term, presence: true
  validates :price, presence: true

  def self.search(curriculum)
    #code
    if curriculum
      where(['c_name LIKE :curriculum', curriculum: "%#{curriculum}%"])
    else
      all
    end
  end

end
