class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    
    if @project.save
      redirect_to @project, notice: "Project has been created."
    else
      flash.now[:alert] = "Couldn't create project."
      render "new"
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description)
  end
end
