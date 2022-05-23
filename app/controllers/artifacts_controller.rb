class ArtifactsController < ApplicationController

  def index
    @artifacts = Artifact.all
  end

  def show
    @artifact = Artifact.find(params[:id])
  end

  def new
    @artifact = Artifact.new
  end

  def create
    @artifact = Artifact.new(artifact_params)
    @artifact.user_id = current_user.id
    if @artifact.save
      redirect_to artifact_path(@artifact)
    else
      render :new
    end
  end

  private

  def artifact_params
    params.require(:artifact).permit(:price, :description, :category, :name)
  end
end
