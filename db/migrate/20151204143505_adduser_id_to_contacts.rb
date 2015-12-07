class AdduserIdToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :user_id, :integer
    add_foreign_key :contacts, :users
  end
end
