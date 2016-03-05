class RentalUnitSerializer < ActiveModel::Serializer
  cache key: 'rental_unit', expires_in: 3.hours
  attributes :id, :rooms, :bathrooms, :price, :price_cents

  belongs_to :user
end
