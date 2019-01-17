Rails.application.routes.draw do
  namespace :api do
    get '/name_game' => 'params_games_app#return_name'
    get '/string_guessing_game' => 'params_games_app#string_guessing_game'
  end
end
