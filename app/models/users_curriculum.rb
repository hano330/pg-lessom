class UsersCurriculum < ApplicationRecord
  belongs_to :curriculum
  belongs_to :user

  def users_curriculum(user_id)
    #code
    #中間テーブルから値を取得
    user = User.find(user_id)
    curriculums = user.users_curriculums.includes(:curriculum)
  end
end
