class FixColumnNameInContacts < ActiveRecord::Migration
  def change
    rename_column :contacts, :name, :name1
    rename_column :contacts, :relationship, :relationship1
    rename_column :contacts, :number, :number1
  end
end
