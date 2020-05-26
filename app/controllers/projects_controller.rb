class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project.user = current_user
    @project = Project.new(project_params)
    if @project.save
      redirect_to packets_path
    else
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit(:title)
  end
end
