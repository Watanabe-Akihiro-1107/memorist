Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "memos#index"
  resources :memos,except:[:destroy,:new]
  delete "memos" => "memos#delete"
  post "memos" => "memos#create"
end
