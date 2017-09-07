require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
  end

  describe "#full_name?" do
    let(:user) { create :user }
    let!(:profile) {create :profile, user: user }
    it "Check if returns full name in correct format" do
      expect(profile.full_name).to eq("#{profile.first_name} #{profile.last_name}")
    end
  end

  describe ".by_initial" do
      let(:sander) { create :profile, first_name: "Sander" }
      let(:stefan) { create :profile, first_name: "Stefan" }
      let(:wouter) { create :profile, first_name: "Wouter" }

      subject { Profile.by_initial("S") }
      it "returns the profiles that match the initial" do
        expect(subject).to match_array([stefan, sander])
      end

      it "is sorted on first_name" do
        expect(subject).to eq([sander, stefan])
      end
    end
end
