Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'workspaces/adachi' => 'workspaces#adachi'
  get 'workspaces/arakawa' => 'workspaces#arakawa'
  get 'workspaces/itabashi' => 'workspaces#itabashi'
  get 'workspaces/edogawa' => 'workspaces#edogawa'
  get 'workspaces/ota' => 'workspaces#ota'
  get 'workspaces/katsushika' => 'workspaces#katsushika'
  get 'workspaces/kita' => 'workspaces#kita'
  get 'workspaces/koto' => 'workspaces#koto'
  get 'workspaces/shinagawa' => 'workspaces#shinagawa'
  get 'workspaces/shibuya' => 'workspaces#shibuya'
  get 'workspaces/shinjuku' => 'workspaces#shinjuku'
  get 'workspaces/suginami' => 'workspaces#suginami'
  get 'workspaces/sumida' => 'workspaces#sumida'
  get 'workspaces/setagaya' => 'workspaces#setagaya'
  get 'workspaces/taito' => 'workspaces#taito'
  get 'workspaces/chuo' => 'workspaces#chuo'
  get 'workspaces/chiyoda' => 'workspaces#chiyoda'
  get 'workspaces/toshima' => 'workspaces#toshima'
  get 'workspaces/nakano' => 'workspaces#nakano'
  get 'workspaces/nerima' => 'workspaces#nerima'
  get 'workspaces/bunkyo' => 'workspaces#bunkyo'
  get 'workspaces/minato' => 'workspaces#minato'
  get 'workspaces/meguro' => 'workspaces#meguro'
  resources :workspaces
  root 'workspaces#index'

  # Defines the root path route ("/")
  # root "articles#index"
end
