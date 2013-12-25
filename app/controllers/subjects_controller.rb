class SubjectsController < ApplicationController
  def index
    @subjects = if current_user.is_teacher
      current_user.subjects
    else
      Subject.all
    end
  end

  def show
    @subject = Subject.find(params[:id])
  end
end
