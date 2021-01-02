class CreateAdditions < ActiveRecord::Migration[6.0]
  def change
    create_table :primes, &:timestamps
  end
end
