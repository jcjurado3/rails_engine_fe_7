require 'rails_helper' 

RSpec.describe 'Merchant Show Page', type: :feature do
  describe "/merchants/:id", :vcr do
    it "has merchant name" do
      visit merchant_path(1)

      expect(page).to have_content("Schroeder-Jerde Show Page")

    end
    it "has list of items that merchant sells" do
      visit merchant_path(1)

      within("#items-list") do
        expect(page).to have_content("Item Nemo Facere")
        expect(page).to have_content("Item Expedita Aliquam")
        expect(page).to have_content("Item Provident At")
        expect(page).to have_content("Item Expedita Fuga")
      end
    end
  end
end