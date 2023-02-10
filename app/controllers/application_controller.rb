class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  #Drinks
  get "/drinks" do
    drinks = Drink.all
    drinks.to_json
  end

  post '/drinks' do
    drinks = Drink.create(
      name: params[:name],
      price: params[:price],
      size: params[:size],
      image_url: params[:image_url]
    )
    drinks.to_json
  end

  delete '/drinks/:id' do
    drinks = Drink.find(params[:id])
    drinks.destroy
    drinks.to_json
  end

  patch '/drinks/:id' do
    drinks = Drink.find(params[:id])
    drinks.update(
      name: params[:name],
      price: params[:price],
      size: params[:size],
      image_url: params[:image_url]
    )
    drinks.to_json
  end

  # Customer
  get '/customers' do
    customers = Customer.all
    customers.to_json
  end

  #Drink-Ingredients
  get '/drinkIngredients' do
    drinkIngredients = DrinkIngredient.all
    drinkIngredients.to_json
  end
  post '/drinkIngredients' do
    drinkIngredients = DrinkIngredient.create(
      name: params[:name],
    )
    drinkIngredients.to_json
  end

  delete '/drinkIngredients/:id' do
    drinkIngredients = DrinkIngredient.find(params[:id])
    drinkIngredients.destroy
    drinkIngredients.to_json
  end

  #Ingredients
  get '/ingredients' do
    ingredients = Ingredient.all
    ingredients.to_json
  end
  
  #Order
  get '/orders' do
    orders = Order.all
    orders.to_json
  end

  get '/orders/customer_id' do
    orders = Order.where(customer_id: params[:customer_id])
    orders.to_json
  end

  post '/orders' do
    order = Order.create(
      order_time: params[:order_time],
      total: params[:total],
      customer_id: params[:customer_id],
      drink_id: params[:drink_id],
    )
    order.to_json
  end

  delete '/orders/:id' do
    order = Order.find(params[:id])
    order.destroy
    order.to_json
  end

  patch '/orders/:id' do
    order = Order.find(params[:id])
    order.update(
      order_time: params[:order_time],
      total: params[:total],
      customer_id: params[:customer_id],
      drink_id: params[:drink_id]
    )
    order.to_json
  end

end
