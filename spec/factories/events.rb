FactoryBot.define do
  factory :event do
    data { "#{JSON.parse(File.read(Rails.root.join('spec', 'fixtures', 'events', 'issue.json')))}" }
  end
end
