class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/drinks" do
    drinks = Drink.all
    drinks.to_json
  end

  # Index
  get '/customers' do
    customers = Customer.all
    customers.to_json
  end





end
