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
  end
  def create
    #code
    User.create(user_params)
  end
  def edit
    #code
    @user = User.find(params[:id])
  end
  def update
    #code
  end
  def destroy
    #code
  end

  private

  def user_params
    #code
    params.require(:user).permit(:u_name, :age)
  end

end
