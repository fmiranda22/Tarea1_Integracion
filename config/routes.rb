Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'inicio#inicio'

  get 'naves' => 'naves#naves'
  get 'personas' => 'personajes#personas'
  get 'planetas' => 'planetas#planetas'


end
