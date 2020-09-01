class HarryPotterService
  def conn
    Faraday.new 'https://www.potterapi.com/'
  end

  def house_id(house)
    if house == 'Gryffindor'
      '5a05e2b252f721a3cf2ea33f'
    elsif house == 'Ravenclaw'
      '5a05da69d45bd0a11bd5e06f'
    elsif house == 'Slytherin'
      '5a05dc8cd45bd0a11bd5e071'
    elsif house == 'Hufflepuff'
      '5a05dc58d45bd0a11bd5e070'
    end
  end

  def house_info(house)
    response = conn.get "/v1/houses/#{house_id(house)}" do |f|
      f.params['key'] = ENV['HP_API_KEY']
    end
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def all_members
    response = conn.get "/v1/characters" do |f|
      f.params['key'] = ENV['HP_API_KEY']
    end
    json = JSON.parse(response.body, symbolize_names: true)
  end
end
