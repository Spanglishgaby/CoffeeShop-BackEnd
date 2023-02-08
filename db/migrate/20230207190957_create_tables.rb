class CreateTables < ActiveRecord::Migration[6.1]
  def change
    create_table "drinks", force: :cascade do |t|
      t.string "name"
      t.decimal "price", precision: 10, scale: 2
      t.string "size"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "ingredients", force: :cascade do |t|
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "drink_ingredients", force: :cascade do |t|
      t.integer "drink_id"
      t.integer "ingredient_id"
    end

    create_table "orders", force: :cascade do |t|
      t.datetime "order_time"
      t.string "customer_name"
      t.decimal "total", precision: 10, scale: 2
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "customers", force: :cascade do |t|
      t.string "name"
      t.string "email"
      t.string "phone"
      t.string "address"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    add_index "drink_ingredients", ["drink_id"], name: "index_drink_ingredients_on_drink_id", using: :btree
    add_index "drink_ingredients", ["ingredient_id"], name: "index_drink_ingredients_on_ingredient_id", using: :btree
  end
end
