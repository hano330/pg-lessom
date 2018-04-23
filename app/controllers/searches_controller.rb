class SearchesController < ApplicationController
  def index
    if params[:c_search]
      @curriculuns = Curriculum.search(params[:c_search])
    elsif params[:u_search]
      @users = User.search(params[:u_search])
    end
  end
end
