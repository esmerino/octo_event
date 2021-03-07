require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "#validations" do
    it { expect(Event.create(data: nil)).to_not be_valid }
  end

  describe "#scopes" do
    context "#by_issue" do
      let!(:event) { create(:event) }

      it do
        result = Event.by_issue(event.data['issue']['number'])
        expect(result[0].data['issue']['number']).to eq(event.data['issue']['number'])
      end
    end
  end
end
