require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "#validations" do
    it { expect(Event.create(data: nil)).to_not be_valid }
  end
end
