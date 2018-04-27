class AddSkillToUsersCurriculum < ActiveRecord::Migration[5.1]
  def change
    add_column :users_curriculums, :skill, :integer
  end
end
