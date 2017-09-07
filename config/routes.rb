Rails.application.routes.draw do
  root to: redirect('https://govuk-static.herokuapp.com/component-guide')

  get 'component', to: redirect("/components")
  get 'component/:id', to: redirect("/components/%{id}")

  get 'components/:component/fixtures/:example/preview', to: redirect('https://govuk-static.herokuapp.com/component-guide/%{component}/%{example}/preview')
  get 'components/:component/fixtures/:example', to: redirect('https://govuk-static.herokuapp.com/component-guide/%{component}/%{example}')
  get 'components/:component', to: redirect('https://govuk-static.herokuapp.com/component-guide/%{component}')

  # Catch all
  get '*path', to: redirect('https://govuk-static.herokuapp.com/component-guide')
end
