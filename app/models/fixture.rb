class Fixture < Struct.new(:id, :data)
  def name
    id.humanize
  end
end
