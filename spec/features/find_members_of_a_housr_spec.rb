require 'rails_helper'

RSpec.describe 'Find feature for all the members of house Gryffindor' do
  describe 'As a user' do
    it "displays all of member's names, role, house, and patronus", :vcr do
      visit root_path
      select "Gryffindor", from: :house
      click_on "Search For Members"
      expect(current_path).to eq('/search')
      expect(page).to have_content('Number of members: 21')
      within('.members') do
        expect(page).to have_content()
      end
    end
  end
end
