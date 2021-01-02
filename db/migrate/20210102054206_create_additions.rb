# frozen_string_literal: true

class CreateAdditions < ActiveRecord::Migration[6.0]
  def change
    create_table :additions, &:timestamps
  end
end
