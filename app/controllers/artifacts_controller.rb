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
    if @artifact.save
      redirect_to artifact_path(@artifact)
    else
      render "artifact/new"
    end
  end

  private

  def artifact_params
    params.require(:artifact).permit(:user_id, :price, :description, :category, :name)
  end
end
