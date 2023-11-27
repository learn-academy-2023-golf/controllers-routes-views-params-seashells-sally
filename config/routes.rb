Rails.application.routes.draw do
  get '/landing' => 'main#landing'
  get '/sean' => 'main#sean'
  get '/eric' => 'main#eric'
  get '/greg' => 'main#greg'
  get '/cubed/:number' => 'main#cubed'
  get '/evenly/:number1/:number2' => 'main#evenly'
  get 'palendrome/:string' => 'main#palendrome'
  get 'madlib/:noun/:verb/:adjective/:adverb' => 'main#madlib'
  root to: 'main#landing'
end
