class RemoveColumnsFromSubmissions < ActiveRecord::Migration
  def change
    remove_column :submissions, :name, :string
    remove_column :submissions, :age, :integer
    remove_column :submissions, :email, :string
    remove_column :submissions, :gender, :string
  end
end
