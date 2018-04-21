class UsersCurriculum < ApplicationRecord
  belongs_to :curriculum
  belongs_to :user
end
