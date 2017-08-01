class TasksController < ApplicationControler

  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @tasks = Task.new(task_params)
  end

  def create
    @task = Task.new(params[:Task])
    @task.save
  end

  def edit
    task_params
  end

  def update
    task_params
    @tasks.update(params[:task])
  end

  def destroy
    task_params
    @tasks.destroy
  end

  def task_params
    Task.find(params[:id])
  end


end
