GovukPublishingComponents.configure do |c|
  c.component_guide_title = "Static Component Guide"
end

GovukPublishingComponents::ComponentDoc.class_eval do
  def partial_path
    "govuk_component/#{id}"
  end
end

GovukPublishingComponents::ComponentDocResolver.class_eval do
  def fetch_component_docs
    Rails.cache.fetch('component_doc', expires_in: 15.minute, force: !Rails.env.production?) {
      fetch_component_docs_from_static
    }
  end

  def fetch_component_doc(id)
    fetch_component_docs.find { |component| component[:id] == id }
  end

  def fetch_component_docs_from_static
    component_doc_url = Plek.current.find('static') + '/templates/govuk_component/docs'
    begin
      JSON.parse(
        RestClient.get(component_doc_url).body,
        symbolize_names: true
      )
    rescue RestClient::BadGateway => e
      raise "#{e} from #{Plek.current.find('static')} - is static running?"
    end
  end
end
