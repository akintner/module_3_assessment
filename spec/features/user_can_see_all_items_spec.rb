require 'rails_helper'

RSpec.describe "user sees all items" do
  scenario "test_it_reaches_the_root_page" do
      visit '/'
      expect(page.status_code).to eq(200)

      within('h1') do
        expect(page).to have_content('Items')
      end
  end

end