class TasksController < ApplicationController
  def index
    @tasks = Task.all
    # @checkbox = checkbok(@tasks)
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params_task)
    @task.save
    redirect_to tasks_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(params_task)
    redirect_to tasks_path(@task)
  end

  private

  def params_task
    params.require(:task).permit(:title, :details)
  end


end
