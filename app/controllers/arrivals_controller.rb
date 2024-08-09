class ArrivalsController < ApplicationController
  def index
    arrivals_data = TflApiService.fetch_train_times

    valid_data = arrivals_data.map do |arrival_data|
      arrival = Arrival.new(
        scheduled_time: arrival_data['expectedArrival'],
        actual_time: arrival_data['timeToStation'],
        line: arrival_data['lineName'],
        platform: arrival_data['platformName'],
        direction: arrival_data['direction'],
        destination: arrival_data['destinationName']
      )

      arrival if arrival.valid?
    end

    @arrivals = valid_data
      .group_by(&:platform)
      .sort_by{ |platform, _| platform.scan(/\d/).join.to_i }
      .to_h
      .transform_values{ |value| value.sort_by(&:actual_time) }
  end
end
