class AddUserIdToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :user_id, :integer
    add_foreign_key :submissions, :users
  end
end
