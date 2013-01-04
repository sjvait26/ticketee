class ProjectsController < ApplicationController
  def index
    @project = Project.all
    if @project.blank?
      flash.now[:error] = "There are no projects available"
    end
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = "Project has been created."
      redirect_to (project_path(@project))
    else
      flash[:alert] = "Project has not been created."
      render :action => "new"
    end
  end

  def show
    @project = Project.find(params[:id])
  end
end
