class UsersCurriculumsController < ApplicationController
  def index
    @users_curriculum = UsersCurriculum.where(user_id: params[:user_id])
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
  end
  def update
    #code
  end
  def destroy
    #code
  end

  private

  def users_curriculums_params
    #code
    params.require(:users_curriculum).permit(:user_id, :curriculum_id)
  end
end
