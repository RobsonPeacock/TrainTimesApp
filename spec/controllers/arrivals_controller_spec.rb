require 'rails_helper'

RSpec.describe ArrivalsController, type: :controller do
  describe 'GET #index' do
    before do
      @arrivals = FactoryBot.build_list(:arrival, 10)

      get :index
    end

    it 'returns a success response' do
      expect(response).to have_http_status(:ok)
    end


    it 'renders the index template' do
      expect(response).to render_template('index')
    end

    it 'returns a collection of arrivals' do
      expect(@arrivals).to be_an(Array)
    end

    it "only returns valid objects" do

      expect(@arrivals.all?(&:valid?)).to be true
    end
  end
end