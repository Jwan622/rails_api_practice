class AddPriceToRentalUnit < ActiveRecord::Migration[5.0]
  def change
    add_column :rental_units, :price, :integer
  end
end
