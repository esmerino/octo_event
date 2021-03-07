require 'rails_helper'

RSpec.describe Event, type: :model do
  describe '#validations' do
    it { expect(described_class.create(data: nil)).not_to be_valid }
  end

  describe '#scopes' do
    describe '#by_issue' do
      let!(:event) { create(:event) }

      it do
        result = described_class.by_issue(event.data['issue']['number'])
        expect(result[0].data['issue']['number']).to eq(event.data['issue']['number'])
      end
    end
  end
end
