class SearchesController < ApplicationController
  def index
    @curriculun = Curriculum.search(params[:search])
  end
end
