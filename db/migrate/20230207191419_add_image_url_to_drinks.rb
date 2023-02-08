class AddImageUrlToDrinks < ActiveRecord::Migration[6.1]
  def change
    add_column :drinks, :image_url, :string
  end
end
