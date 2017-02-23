require 'rails_helper'

RSpec.describe "user sees all items" do
  scenario "it can reach the items index" do
      visit items_path
      expect(page.status_code).to eq(200)

      within('h1') do
        expect(page).to have_content('Items')
      end
  end

end