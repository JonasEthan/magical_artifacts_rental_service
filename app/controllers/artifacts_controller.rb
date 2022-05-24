class ArtifactsController < ApplicationController
  def index
    @artifacts = policy_scope(Artifact)
  end

  def show
    @artifact = Artifact.find(params[:id])
    @booking = Booking.new
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

  def edit
    @artifact = Artifact.find(params[:id])
    authorize @artifact
  end

  def update
    @artifact = Artifact.find(params[:id])
    authorize @artifact
    if @artifact.update(artifact_params)
      redirect_to artifact_path(@artifact)
    else
      render :edit
    end
  end

  private

  def artifact_params
    params.require(:artifact).permit(:price, :description, :category, :name)
  end
end
