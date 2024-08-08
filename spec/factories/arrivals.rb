FactoryBot.define do
  factory :arrival do
    scheduled_time { '2024-01-01T12:00:00Z' }
    actual_time { 180 }
    line { 'Hammersmith and City' }
    platform { 'Platform 7' }
    direction { 'inbound' }
    destination { 'Great Portland Street' }
  end
end