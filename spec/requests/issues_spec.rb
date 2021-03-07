require 'rails_helper'

RSpec.describe 'Issues', type: :request do
  describe 'GET /issues/:id/events' do
    let(:event) { create(:event) }

    context 'when has issue' do
      before do
        get "/issues/#{event.data['issue']['number']}/events"
      end

      it { expect(response).to have_http_status(:ok) }
      it { expect(JSON.parse(response.body).length).to eq(1) }
      it { expect(JSON.parse(response.body)[0]['data']['issue']['number']).to eq(1) }
    end

    context 'when has not issue' do
      before do
        get '/issues/1000/events'
      end

      it { expect(response).to have_http_status(:ok) }
      it { expect(JSON.parse(response.body).length).to eq(0) }
    end
  end
end
