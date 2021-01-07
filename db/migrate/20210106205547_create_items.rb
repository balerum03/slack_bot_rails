class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :prime_numbers, null: false, array: true, default: []
      t.timestamps
    end
  end
end
