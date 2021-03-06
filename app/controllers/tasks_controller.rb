class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  # GET /projects/1
  def new
    @task = Task.new
    @projetos = Project.all
  end

  # GET /tasks/1/edit
  def edit
    @projetos = Project.all
    @project = Project.find_by_id(@task.project_id)
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)
    projeto = Project.find_by_id(@task.project_id)

    respond_to do |format|
      if @task.save!
        format.html { redirect_to project_path(projeto), notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    task = Task.find (params[:id])
    project = Project.find (task.project_id)
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to project_path(project), notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    projeto = Project.find_by_id(@task.project_id)
    @task.destroy
    respond_to do |format|
      format.html { redirect_to project_path(projeto), notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:title, :dt_inicio, :dt_final, :finish, :project_id)
    end
end
