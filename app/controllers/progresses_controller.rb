class ProgressesController < ApplicationController

  def new
    @progress = Progress.new
  end

  def create
    @progress = Progress.new(progress_params)
    @progress.project_id = @project.id
    redirect_to project_path(@project)
  end

  private

  def progress_params
    params.require(:progress).permit(:comment)
  end

end
