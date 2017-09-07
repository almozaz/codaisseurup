require 'rails_helper'

RSpec.describe User, type: :model do
  describe "has_profile?" do
    let(:user) { create :user }
    let!(:profile) { create :profile, user: user }
    it "returns true if the user has a profile" do
      expect(user.has_profile?).to be(true)
    end
  end

  describe "association with event" do
    let(:user) { create :user }
    let!(:event) { create :event, user: user }

    it "has many events" do
      event1 = user.events.new(name: "Birthday")
      event2 = user.events.new(name: "Boat Party")

      expect(user.events).to include(event1)
      expect(user.events).to include(event2)
    end

    it "deletes associated events" do
      expect { user.destroy }.to change(user.events, :count).by(-1)
    end
  end
end
