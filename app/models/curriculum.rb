class Curriculum < ApplicationRecord

  def self.search(curriculum)
    #code
    if curriculum
      where(['c_name LIKE :curriculum', curriculum: "%#{curriculum}%"])
    else
      all
    end
  end
end
