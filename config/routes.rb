Rails.application.routes.draw do
  resources :students, except: [:new, :edit]
  resources :teachers, except: [:new, :edit]
  resources :prompt_responses, except: [:new, :edit]
  resources :prompts, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
