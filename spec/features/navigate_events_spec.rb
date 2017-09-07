require 'rails_helper'

describe "Navigating events" do
  before { login_as user }

  let(:user) { create :user }
  let!(:event) { create :event , user: user }

  it "allows navigation from the detail page to the listing page" do
    visit event_url(event)

    click_link "Back"

    expect(current_path).to eq(events_path)
  end

  it "allows navigation between events index to event" do
    visit events_url

    click_link "View"

    expect(current_path).to eq(event_path(event))
  end

  it "allows navigation between index and update" do
    visit events_url

    click_link "Update"

    expect(current_path).to eq(edit_event_path(event))
  end

end
