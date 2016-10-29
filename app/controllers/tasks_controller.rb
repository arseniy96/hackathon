class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.where(user_id: 1)

    render json: @tasks
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    render json: @task
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @user = User.find(1)
    @task = @user.tasks.new(task_params)

    if @task.save
      render json: @task, status: :created, location: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    
    @tasks = Task.all

    render json: @tasks
  end

  private

    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.permit(:name, :description, :date, :complete)
    end
end
