require 'rails_helper'

RSpec.describe "Events", type: :request do
  describe "POST /events" do
    it do
      post '/events', params: JSON.parse(File.read(Rails.root.join('spec', 'fixtures', 'events', 'issue.json')))

      expect(response).to have_http_status(:created)
      expect(Event.count).to eq(1)
      expect(Event.last.data["issue"]["number"]).to eq("1")
    end
  end
end
