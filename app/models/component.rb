class Component < Struct.new(:id, :name, :description, :fixtures)
  def self.get(id)
    all.select { |component| component.id == id }.first
  end

  def self.all
    Rails.cache.fetch('component_doc', expires_in: 15.minute) {
      fetch_component_doc
    }.map { |component| build(component) }
  end

  def self.build(component)
    fixtures = component["fixtures"].map {|id, data|
      Fixture.new(id, data.with_indifferent_access)
    }
    self.new(component["id"], component["name"], component["description"], fixtures)
  end

  def self.component_doc_url
    Plek.current.find('static') + '/templates/govuk_component/docs'
  end

  def self.fetch_component_doc
    JSON.parse(RestClient.get(component_doc_url).body)
  end

  def fixture
    fixtures.first
  end

  def other_fixtures
    fixtures.slice(1..-1)
  end
end
