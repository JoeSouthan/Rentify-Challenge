class AddToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :email, :string
    add_column :properties, :telephone, :string
  end
end
