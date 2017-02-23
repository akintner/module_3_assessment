require 'rails_helper'

RSpec.describe "API can display all items" do 
  before do 
    @item1 = Item.create(name: Faker::Hipster.unique.words(2).join(""),
    description: Faker::Hipster.sentence)

     @item2 = Item.create(name: Faker::Hipster.unique.words(2).join(""),
    description: Faker::Hipster.sentence)

    @item3 = Item.create(name: Faker::Hipster.unique.words(2).join(""),
    description: Faker::Hipster.sentence)
  end

  scenario "items_controller will display all items" do 
    visit api_v1_items_path

    expect(page.status_code).to eq(200)
    expect(page).to have_content(@item1.name)
    expect(page).to have_content(@item3.description)
  end
end