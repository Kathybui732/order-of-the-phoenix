class SearchResults
  def members(house)
    hp_service.house_info(house)[0][:members].map do |member_data|
      find_members(member_data[:_id])
    end
  end

  def hp_service
    HarryPotterService.new
  end

  def all_members
    hp_service.all_members.map do |member_data|
      Member.new(member_data)
    end
  end

  def find_members(id)
    all_members.find do |member|
      member.id == id
    end
  end
end
