require 'rails_helper'

RSpec.describe "user can find search page" do
  scenario "user can visit root_path" do
    visit root_path
    expect(page.status_code).to eq(200)
  end

  scenario "user can search for BestBuy stores" do 
    visit root_path

    fill_in :q, with: '80202'
    click_on 'Search'
    expect(current_path).to eq('/search')
  end

end


# As a user
# When I visit "/"
# And I fill in a search box with "80202" and click "search"
# Then my current path should be "/search" (ignoring params)
# And I should see stores within 25 miles of 80202
# And I should see a message that says "16 Total Stores"
# And I should see exactly 10 results
# And I should see the long name, city, distance, phone number and store type for each of the 10 results