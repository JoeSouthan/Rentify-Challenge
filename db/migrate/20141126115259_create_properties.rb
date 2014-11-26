class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :postcode
      t.text :description
      t.money :current_rent
      t.money :initial_cost

      t.timestamps
    end
  end
end
