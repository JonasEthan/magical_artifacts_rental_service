class ArtifactsController < ApplicationController

  def show
    @artifcat = Artifact.find(params[:id])
  end
end
