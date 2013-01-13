class ProjectsController < ApplicationController
  
  before_filter :find_project, :only => [:show, :edit, :destroy, :update]
  
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
  end

  def edit
  end

  def update
    if @project.update_attributes(params[:project])
      flash[:notice] = "Project has been updated."
      redirect_to :action => 'show', :id => @project
    else
      flash[:error] = "Project has not been updated."
      render 'edit'
    end
  end

  def destroy
    @project.destroy
    flash[:notice] = "Project has been deleted."
    redirect_to projects_path
  end

private
  def find_project
    @project = Project.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The project you were looking for could not be found."
    redirect_to projects_path
  end
end
