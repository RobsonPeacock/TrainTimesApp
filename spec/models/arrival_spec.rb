require 'rails_helper'

RSpec.describe Arrival, type: :model do
  before do
    @arrival = FactoryBot.build(:arrival)
  end

  it 'is valid with valid attributes' do
    expect(@arrival).to be_valid
  end

  it 'should be invalid if line or platform are not present' do
    @arrival.line = ''
    @arrival.platform = ''

    expect(@arrival).to_not be_valid
  end

  it 'should be invalid if schedule_time does not follow format' do
    @arrival.scheduled_time = '2024-01-01'

    expect(@arrival).to_not be_nil
    expect(@arrival).to_not be_valid
  end

  it 'should be invalid if actual_time is not an integer' do
    @arrival.actual_time = '180 seconds'

    expect(@arrival).to_not be_valid
  end
end