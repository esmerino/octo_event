require 'rails_helper'

RSpec.describe 'Events', type: :request do
  describe 'POST /events' do
    before do
      post '/events', params: JSON.parse(File.read(Rails.root.join('spec', 'fixtures', 'events', 'issue.json')))
    end

    it { expect(response).to have_http_status(:created) }
    it { expect(Event.count).to eq(1) }
    it { expect(Event.last.data['issue']['number']).to eq('1') }
  end
end
