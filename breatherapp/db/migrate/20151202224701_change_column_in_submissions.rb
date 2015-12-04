class ChangeColumnInSubmissions < ActiveRecord::Migration
  def change
    remove_column :submissions, :date, :string
    add_column :submissions, :date, :date
  end
end
