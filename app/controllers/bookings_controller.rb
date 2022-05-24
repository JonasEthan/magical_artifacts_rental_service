class BookingsController < ApplicationController
  def create
    @artifact = Artifact.find(params[:artifact_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.artifact = @artifact
    authorize @booking
    if @booking.save
      redirect_to artifact_path(@artifact)
    else
      redirect_to artifacts_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:days)
  end
end
