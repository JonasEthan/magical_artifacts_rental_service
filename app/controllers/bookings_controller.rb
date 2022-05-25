class BookingsController < ApplicationController
  def create
    @artifact = Artifact.find(params[:artifact_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.artifact = @artifact
    authorize @booking
    @booking.start_date = params[:booking][:start_date]
    @booking.end_date = params[:booking][:end_date]
    if @booking.save
      redirect_to artifact_path(@artifact)
    else
      render "artifacts/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
