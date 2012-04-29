class TasksController < ApplicationController
  before_filter :check_admin, :except => [:index]
  
  def check_admin
    unless current_user.admin?
      flash[:notice] = "Sorry! You don't have access."
      redirect_to(root_path)
    end
  end

  def index
    @tasks = Task.all
    respond_to do |format|
      format.html
      format.json { render json: @task }
    end
  end

  def show
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html
      format.json {render json: @task}
    end
  end

  def new
    
  end

  def create

  end

  def update

  end
end
