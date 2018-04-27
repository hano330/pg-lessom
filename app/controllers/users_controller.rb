class UsersController < ApplicationController
  def index
    #code
    @users = User.all
  end
  def new
    #code
    @user = User.new
  end
  def show
    #code
    #中間テーブルから値を取得
    @user = User.find(params[:id])
    @selected_curriculums = @user.users_curriculums.includes(:curriculum)
    #deleteのためのuser id を受け渡す
    @user_id = params[:id]
    @per = "30"
  end
  def create
    #code
    User.create(user_params)
  end
  def edit
    #code
    @user = User.find(params[:id])
    @selected_curriculums = UsersCurriculum.where(user_id: params[:id])
    #deleteのためのuser id を受け渡す
    @user_id = params[:id]
  end
  def update
    #code
    user = User.find(params[:id])
    if user
      user.update(user_params)
    elsif param[:c_id]

    else
    end
  end
  def destroy
    #code
    user = User.find(params[:id])
    user.destroy
  end

  private

  def user_params
    #code
    params.require(:user).permit(:u_name, :age)
  end

end
