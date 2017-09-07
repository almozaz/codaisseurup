require 'rails_helper'

describe "Viewing an individual event" do
  let(:user) {create :user}
  let(:event) { create :event, user: user }

  it "shows the event's details" do
    visit event_url(event)

    expect(page).to have_text(event.name)
    expect(page).to have_text(event.location)
    expect(page).to have_text("Host: #{user.email}")
    expect(page).to have_text("Price: #{event.price}")
    expect(page).to have_text("Capacity: #{event.capacity}")
    expect(page).to have_text("Includes food: #{event.includes_food}")
  end
end
