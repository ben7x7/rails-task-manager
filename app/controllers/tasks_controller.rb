class TasksController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @tasks = Task.new(task_params)
  end

  def create
    @task = Task.new(params[:Task])
    @task.save
  end

  def edit
  end

  def update
    @tasks.update(params[:task])
  end

  def destroy
    @tasks.destroy
    redirect_to tasks_path
  end

  def set_task
   Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :details)
  end
end
