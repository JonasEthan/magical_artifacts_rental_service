class ArtifactsController < ApplicationController

  def index
    @artifacts = policy_scope(Artifact)
  end

  def show
    @artifact = Artifact.find(params[:id])
    authorize @artifact
  end

  def new
    @artifact = Artifact.new
    authorize @artifact
  end

  def create
    @artifact = Artifact.new(artifact_params)
    @artifact.user_id = current_user.id
    authorize @artifact
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
