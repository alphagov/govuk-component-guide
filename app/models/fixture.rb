class Fixture < Struct.new(:id, :data)
  def name
    id.humanize
  end

  def pretty_data
    JSON.pretty_generate(data).gsub('\\n', "\n    ").strip
  end

  def data?
    data.any?
  end
end
