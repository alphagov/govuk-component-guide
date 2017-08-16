Rails.application.routes.draw do
  mount GovukPublishingComponents::Engine, at: "/static"

  get 'about' => to: redirect("/")
  get 'component', to: redirect("/static")
  get 'component/:id', to: redirect("/static/%{id}")
  root 'welcome#index'
end
