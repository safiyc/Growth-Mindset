class ProgressesController < ApplicationController
  before_action :find_project

  def new
    @progress = Progress.new
  end

  def create
    @progress = Progress.new(progress_params)
    @progress.project_id = @project.id

    if @progress.save
      redirect_to project_path(@project)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @progress.update(progress_params)
      redirect_to project_path(@project)
    else
      render 'edit'
    end
  end

  def destroy
    @progress.destroy
    redirect_to project_path(@project)
  end

  private

  def progress_params
    params.require(:progress).permit(:comment)
  end

  def find_project
    @project = Project.find(params[:project_id])
  end

  def find_progress
    @progress = Progress.find(params[:id])
  end
end
