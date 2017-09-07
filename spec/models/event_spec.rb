require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:location) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:starts_at) }
    it { is_expected.to validate_presence_of(:ends_at) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(50) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_length_of(:description).is_at_most(500) }
  end

  describe ".order_by_price" do
    let!(:event1) { create :event, price: 100 }
    let!(:event2) { create :event, price: 200 }
    let!(:event3) { create :event, price: 50 }

    it "returns a sorted array of events by prices" do
      # note that they should not come out in the order that they were created
      expect(Event.order_by_price).to eq([event3, event1, event2])
    end
  end

  describe "association with user" do
    let(:user) { create :user }


      it { is_expected.to belong_to :user}
      it { is_expected.to have_and_belong_to_many :categories }
  end

  describe "association with category" do
    let!(:event) { create :event }

    let!(:category1) { create :category, name: "Bright", events: [event] }
    let!(:category2) { create :category, name: "Clean lines", events: [event] }
    let!(:category3) { create :category, name: "A Man's Touch", events: [event] }

    it "has categories" do
      expect(event.categories).to include(category1)
      expect(event.categories).to include(category2)
      expect(event.categories).to include(category3)
    end
  end
end
