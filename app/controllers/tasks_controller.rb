class TasksController < ApplicationController
  # create action to display a list of all tasks in a page
  def index
    @tasks = Task.all
  end

  # create action to display details of one specific chosen task in its page
  def show
    @task = Task.find(params[:id])
  end

  # create action to enter new task
  def new
    @task = Task.new
  end

  # create action to instantiate and save in db the task that the user wants to create
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    raise
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
