class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]

  def index
    if params[:category].blank?
      # 'DESC' means decending order; new item is listed on top
      @projects = Project.all.order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @projects = Project.where(:category_id => @category_id).order("created_at DESC")
    end
  end

  def new
    @project = current_user.projects.build
    @categories = Category.all.map{ |c| [c.name, c.id] }
  end

  def create
    @project = current_user.projects.build(project_params)
    @project.category_id = params[:category_id]

    if @project.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
    @categories = Category.all.map{ |c| [c.name, c.id] }
  end

  def update
    @project.category_id = params[:category_id]

    if @project.update(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to root_path
  end

  private

  def project_params
    params.require(:project).permit(:name, :desc, :category_id)
  end

  def find_project
    @project = Project.find(params[:id])
  end
end
