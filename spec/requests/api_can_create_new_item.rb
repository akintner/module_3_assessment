require 'rails_helper'

RSpec.describe "API can create one item" do 

  scenario "items_controller will create one new item" do 

    url = "api/v1/items"
    body = { name: "New item here", description: "this is a very great item"}

    post "/api/v1/items", params: body

    expect(page.status_code).to eq(201)
    expect(page).to have_content("New item here")
    expect(page).to have_content("this is a very great item")
    expect(page).not_to have_content("created_at")
  end
end