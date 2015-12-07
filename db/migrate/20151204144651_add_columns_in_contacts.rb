class AddColumnsInContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :name2, :string
    add_column :contacts, :relationship2, :string
    add_column :contacts, :number2, :string
  end
end
