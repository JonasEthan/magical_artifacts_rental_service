class DashboardsController < ApplicationController
  def index
    @bookings = policy_scope(Artifact.where(user_id: current_user))
    @user_bookings = Booking.all.where(user_id: current_user)
    @user_artifacts = Artifact.all.where(user_id: current_user)
    @all_booked_artifacts = Booking.all
  end
end
