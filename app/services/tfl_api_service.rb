require 'httparty'

class TflApiService
  STOP_POINT_ID = '940GZZLUGPS'
  BASE_URL = "https://api.tfl.gov.uk"

  def self.fetch_train_times
    url = "#{BASE_URL}/StopPoint/#{STOP_POINT_ID}/Arrivals"
    response = HTTParty.get(url)
    raise "API Error: #{response.code}" unless response.success?
    response.parsed_response
  end
end