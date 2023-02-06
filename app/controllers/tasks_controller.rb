class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(strong_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
  end

  def update
    @task.update(strong_params)
    redirect_to tasks_path(@task)
  end

  def delete
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def strong_params
    params.require(:task).permit(:title, :details)
  end
end
