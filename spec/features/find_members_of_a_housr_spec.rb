require 'rails_helper'

RSpec.describe 'Find feature for all the members of house Gryffindor', :vcr do
  describe 'As a user' do
    it "displays all of member's names, role, house, and patronus" do
      cassette = '/Users/kathybui/turing/3-mod/mid-mod/order-of-the-phoenix/spec/fixtures/vcr_cassettes/Find_feature_for_all_the_members_of_house_Gryffindor/As_a_user/displays_all_of_member_s_names_role_house_and_patronus.yml'
      fixture = File.read(cassette)
      yaml = YAML.load(fixture, symbolize_names: true)
      yaml_data = yaml[:http_interactions][1][:response][:body][:string]
      json = JSON.parse(yaml_data, symbolize_names: true)
      members = json.map do |data|
        Member.new(data)
      end
      gryffindor_members = members.select do |member|
        member.house == "Gryffindor"
      end

      visit root_path
      select "Gryffindor", from: :house
      click_on "Search For Members"
      expect(current_path).to eq('/search')
      expect(page).to have_content('Number of members: 40')

      gryffindor_members.each do |member|
        within('.members') do
          expect(page).to have_content(member.name)
          expect(page).to have_content(member.role)
          expect(page).to have_content(member.house)
          expect(page).to have_content(member.patronus)
        end
      end
    end
  end
end
