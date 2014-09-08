class Fixture < Struct.new(:id, :data)
  def name
    id.humanize
  end

  def pretty_data
    JSON.pretty_generate(data)
  end

  def data?
    data.any?
  end
end
