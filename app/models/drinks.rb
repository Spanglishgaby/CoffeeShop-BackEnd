class Drink < ActiveRecord::Base
    has_many :drink_ingredients
    has_many :ingredients, through: :drink_ingredients
end