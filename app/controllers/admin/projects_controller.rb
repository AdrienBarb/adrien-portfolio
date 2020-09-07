class Admin::ProjectsController < Admin::ApplicationController

  before_action :set_user, only: [:new, :create]
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = @user.projects.build
  end

  def create
    @project = @user.projects.build(project_params)
    if @project.save!
      flash[:notice] = "Le projet a bien été créé !"
      redirect_to admin_project_path(@project)
    else
      flash[:alert] = "Le projet n'a pu être créé !"
      render :new
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      flash[:notice] = "Le projet a bien été modifie !"
      redirect_to admin_project_path(@project)
    else
      flash[:alert] = "Le projet n'a pu être modifié !"
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to admin_projects_path
  end

  private

  def set_user
    @user = current_user
  end

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :link, :tag_names, images: [])
  end

end
