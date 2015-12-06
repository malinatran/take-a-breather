class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :contact1_name, :string
    add_column :users, :contact1_number, :string
    add_column :users, :contact2_name, :string
    add_column :users, :contact2_number, :string
  end
end
