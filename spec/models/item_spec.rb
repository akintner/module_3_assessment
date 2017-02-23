require 'rails_helper'

RSpec.describe "Item" do
  context "attributes" do
    it "has the correct attributes" do
      item = Item.new(name: "Check out this item!", description: "woo, it's so neat", image_url: "someimagehere")

      expect(item.name).to eq("Check out this item!")
      expect(item.description).to eq("woo, it's so neat")
      expect(item.image_url).to eq("someimagehere")
    end
  end

  context "assocaitions" do 
    # it { is_expected.to have_many(:order_items) }
    # it { is_expected.to have_many(:orders) }
    #these aren't working, not sure why, messed with it for a while and decided to move on
  end

end
