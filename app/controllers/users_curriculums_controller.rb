class UsersCurriculumsController < ApplicationController
  def index
    u_curriculum = UsersCurriculum.new
    @selected_curriculums = u_curriculum.users_curriculum(params[:user_id])
    @user = User.find(params[:user_id])
  end
  def new
    #code
    @users_curriculum = UsersCurriculum.new
    @curriculum = Curriculum.all
    @user = User.find(params[:user_id])
  end
  def show
    #code

  end
  def create
    #code
    UsersCurriculum.create(users_curriculums_params)
  end
  def edit
    #code
    @selected_curriculums = UsersCurriculum.find(params[:id])
    @user = User.find(params[:user_id])
  end
  def update
    #code
    curriculum = UsersCurriculum.find(params[:id])
    curriculum.update(skill_params)
  end
  def destroy
    #code
    u_curriculum = UsersCurriculum.find(params[:id])
    u_curriculum.destroy
  end

  private

  def users_curriculums_params
    #code
    params.require(:users_curriculum).permit(:user_id, :curriculum_id)
  end
  def skill_params
    #code
    params.permit(:user_id, :skill)
  end
end
