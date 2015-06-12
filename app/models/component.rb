Component = Struct.new(:id, :name, :description, :body, :fixtures) do
  def self.get(id)
    all.select { |component| component.id == id }.first
  end

  def self.all
    if Rails.env.production? # Only use caching if we're in Production
      Rails.cache.fetch('component_doc', expires_in: 15.minute) {
        fetch_component_doc
      }.map { |component| build(component) }
    else
      fetch_component_doc.map { |component| build(component) }
    end
  end

  def self.build(component)
    fixtures = component["fixtures"].map {|id, data|
      Fixture.new(id, data.with_indifferent_access)
    }
    self.new(component["id"], component["name"], component["description"], component["body"], fixtures)
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

  def html_body
    Kramdown::Document.new(body).to_html.html_safe
  end

  def other_fixtures
    fixtures.slice(1..-1)
  end
end
