require 'rails_helper'

RSpec.describe "API can display one item" do 
  before do 
    @item = Item.create(name: Faker::Hipster.unique.words(2).join(""),
    description: Faker::Hipster.sentence)
  end

  scenario "items_controller can show one item" do 
    visit api_v1_item_path(@item)

    expect(page.status_code).to eq(200)
    expect(page).to have_content(@item.name)
    expect(page).to have_content(@item.description)
  end
end