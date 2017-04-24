class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    redirect_to tasks_index_path 
  end

  def create
    @task = Task.new(params.require(:task).permit(:name))
    @task.save
    respond_to do |format|
      format.html do
        flash[:notice] = 'Message successfully sent.'
        redirect_to tasks_path
      end
      format.js   { }
    end
  end

  def update
    @task = Task.find_by(id: params[:id])
    @task.status = params[:checked] == 'true' ? 1 : 0
    @task.save
    respond_to do |format|
      format.js   { }
    end
  end

end
