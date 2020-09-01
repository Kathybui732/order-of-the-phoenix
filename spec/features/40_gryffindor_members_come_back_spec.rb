require 'rails_helper'

RSpec.describe 'Test to hit api' do
  describe 'search results' do
    it "can return all members of house gryffindor" do
      visit root_path
      select "Gryffindor", from: :house
      click_on "Search For Members"
      expect(current_path).to eq('/search')
      expect(page).to have_content('Number of members: 40')
    end
  end
end
