class CreateAdditions < ActiveRecord::Migration[6.0]
  def change
    create_table :additions do |t|

      t.timestamps
    end
  end
end
