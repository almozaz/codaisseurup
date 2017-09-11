class Api::RegistrationsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    event = Event.find(params[:event_id])
    registration = event.registration.new(registration_params)

    if registration.save
      render status: 200, json: {
        message: "Registration created",
        event: event,
        registration: registration
      }.to_json
    else
      render status: 422, json: {
        message: "Registration could not be created",
        errors: registration.errors
      }.to_json
    end
  end

  private

  def registration_params
    params.require(:registration).permit(:guest_count)
  end
end
