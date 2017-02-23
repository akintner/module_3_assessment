require 'rails_helper'

RSpec.describe "API can delete one item" do 
  before do 
    @item1 = Item.create(name: Faker::Hipster.unique.words(2).join(""),
    description: Faker::Hipster.sentence,
    image_url: "http://4.bp.blogspot.com/_SxiqKf2UHVU/TCwu0dP4MGI/AAAAAAAAACQ/b5n0ZPjFtIg/s1600/mallard-duck-1024-768.jpg")

    @item2 = Item.create(name: Faker::Hipster.unique.words(2).join(""),
    description: Faker::Hipster.sentence,
    image_url: "http://4.bp.blogspot.com/_SxiqKf2UHVU/TCwu0dP4MGI/AAAAAAAAACQ/b5n0ZPjFtIg/s1600/mallard-duck-1024-768.jpg")
  end

  scenario "items_controller will delete one item" do 
    delete "/api/v1/items/#{@item1.id}"

    expect(page.status_code).to eq(204)

    visit api_v1_items_path
    expect(page).to have_content(@item2.name)
    expect(page).to have_content(@item2.description)
    expect(page).not_to have_content(@item1.name)
    expect(page).not_to have_content("created_at")
  end
end