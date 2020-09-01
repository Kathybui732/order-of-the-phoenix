class Member
  attr_reader :id, :name, :role, :house, :patronus

  def initialize(member_params)
    @name = member_params[:name]
    @id = member_params[:_id]
    @role = member_params[:role]
    @house = member_params[:house]
    @patronus = member_params[:patronus]
  end
end
