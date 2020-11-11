class TasksController < ApplicationController
  def new
    @tasks = Task.new
  end

  def create
    @tasks = Task.new(params[:task])
    @tasks.save
  end

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @tasks = Task.find(params[:id])
  end

  def update
    @tasks = Task.find(params[:id])
    @tasks.update(params[:task])
  end

  def destroy
    @tasks = Task.find(params[:id])
    @tasks.destroy
  end
end
