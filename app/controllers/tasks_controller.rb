class TasksController < ApplicationController
  before_action :set_task, except: :index
  before_action :set_task_assignment, except: :index

  def index
    Project.find(params[:id]).tasks
  end

  def todo
    @task_assignment.update_attribute(:status, "todo")
    redirect_to subject_path(@task.lesson.subject)
  end

  def review
    @task_assignment.update_attribute(:status, "review")
    redirect_to subject_path(@task.lesson.subject)
  end

  def done
    @task_assignment.update_attribute(:status, "done")
    redirect_to subject_path(@task.lesson.subject)
  end

  protected

  def set_task
    @task = Task.find(params[:id])
  end

  def set_task_assignment
    @task_assignment = @task.task_assignments.where(user_id: params[:user_id]).first
  end
end
