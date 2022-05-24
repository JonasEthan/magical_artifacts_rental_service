class BookingsController < ApplicationController
  # def new
  #   @artifact = Artifact.find(params[:artifact_id])
  #   @booking = Booking.new
  # end

  def create
    @artifact = Artifact.find(params[:artifact_id])
    # @user = current_user
    # @booking = Booking.new(user_id: current_user.id, artifact_id: artifact.id,
                          #  days: params[:days])
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.save
    redirect_to artifact_path(@artifact)
  end

  # if @booking.save
  #   redirect_to artifact_path(@artifact)
  # else
  #   # throw error
  # end

# def create
#     # create multiple plant_tags
#     @plant = Plant.find(params[:plant_id])
#     @tag = Tag.find(params[:plant_tag][:tag])

#     @tag.each do |tag|
#       PlantTag.create(plant: @plant, tag: tag)
#     end
#     redirect_to garden_path(@plant.garden)
#   end
# end

  private

  def booking_params
    params.require(:booking).permit(:days, :artifact_id)
  end
end
