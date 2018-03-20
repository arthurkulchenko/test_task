Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      match 'info' => 'requests#get_amount_of_messages', :via => :get, defaults: { format: 'json' }
    end
  end
end
