class UsersCurriculum < ApplicationRecord
  belongs_to :curriculum
  belongs_to :user

  def users_curriculum(user_id)
    #code
    #中間テーブルから値を取得
    user = User.find(user_id)
    curriculums = @user.users_curriculums


    #deleteのためのuser id を受け渡す
    #selected_curriculum = UsersCurriculum.where(user_id: user_id)
    #curriculums = Array.new
    #selected_curriculum.each do |data|
    #  curriculums << Curriculum.find(data.curriculum_id)
    #end
    #curriculums

  end
end
