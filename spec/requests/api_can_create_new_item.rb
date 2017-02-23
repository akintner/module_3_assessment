require 'rails_helper'

RSpec.describe "API can create one item" do 

  scenario "items_controller will create one new item" do 

    url = "api/v1/items"
    body = { name: Faker::Hipster.unique.words(2).join(""), description: Faker::Hipster.sentence }

    post "/api/v1/items", params: body


    # expect(page).to have_content(@item2.name)
    # expect(page).to have_content(@item2.description)
    # expect(page).not_to have_content(@item1.name)
    # expect(page).not_to have_content("created_at")
  end
end