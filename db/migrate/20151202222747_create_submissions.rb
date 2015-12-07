class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :date
      t.string :name
      t.string :location
      t.integer :age
      t.string :email
      t.string :gender
      t.string :feeling
      t.string :conflict
      t.text :letter
    end
  end
end
