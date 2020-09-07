class Admin::ProjectsController < Admin::ApplicationController

  before_action :set_user, only: [:new, :create]
  before_action :set_project, only: [:show]

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

  private

  def set_user
    @user = current_user
  end

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :link)
  end

end
