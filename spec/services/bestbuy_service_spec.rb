require 'rails_helper'

RSpec.describe BestBuyService do 
  context '.nearest_to_zip(zip) method' do 
    it 'returns stores nearest to that zipcode' do
        raw_stores = BestBuyService.nearest_to_zip("80202")

        expect(raw_stores).to be_an(Array)
        
        store = raw_stores.first

        expect(store).to be_a(Hash)
        expect(store).to have_key(:longName)
        expect(store).to have_key(:phone)
        expect(store).to have_key(:distance)
    end
  end
end