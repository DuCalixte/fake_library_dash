Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql" if Rails.env.development?
  post "/graphql", to: "graphql#execute"
  mount OpenApi::Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[index show], defaults: { format: 'json' }
      resources :books, only: %i[index show], defaults: { format: 'json' }
      resources :book_inventories, only: %i[index show update], defaults: { format: 'json' }
      resources :book_lists, only: %i[index create], defaults: { format: 'json' }
      resources :book_lists, only: %i[show update destroy], defaults: { format: 'json' }, param: :user_id
      resources :checkouts, only: %i[index create show update], defaults: { format: 'json' }
      resources :checkouts, only: %i[show_for_user update_for_user], defaults: { format: 'json' }, param: :user_id
      resources :book_list_infos, only: %i[index, create, show, update destroy], defaults: { format: 'json' }, param: :user_id

    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
