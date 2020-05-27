class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    if @project.save
      redirect_to packets_path
    else
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
    @packets = @project.packets
  end
  
  private

  def project_params
    params.require(:project).permit(:title)
  end
end
