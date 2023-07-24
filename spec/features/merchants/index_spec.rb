require 'rails_helper' 

RSpec.describe 'Merchants Index Page', type: :feature do
  before(:each) do
    @merchants = MerchantsFacade.new.get_merchants
  end
  describe '/merchants', :vcr do
    it 'has list of merchants' do
      visit "/merchants"

      expect(page).to have_content("List of Merchants")
    end

    it 'has merchants name' do
      visit "/merchants"

      within("#merchants") do
        expect(page).to have_content("Schroeder-Jerde")
        expect(page).to have_content("Klein, Rempel and Jones")
        expect(page).to have_content("Willms and Sons")
      end
    end

    it 'has link to merchant show page' do
      visit "/merchants"

      within("#merchants") do
        expect(page).to have_link("Schroeder-Jerde")
        expect(page).to have_link("Klein, Rempel and Jones")
        expect(page).to have_link("Willms and Sons")
      end
    end
  end
end