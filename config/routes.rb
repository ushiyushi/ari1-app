Rails.application.routes.draw do
  get 'questions/index'
  root to: "questions#index"
  get "up" => "rails/health#show", as: :rails_health_check

end
