class AddUserRefToRentalUnits < ActiveRecord::Migration[5.0]
  def change
    add_reference :rental_units, :user, foreign_key: true
  end
end
