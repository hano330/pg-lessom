class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :u_name
      t.integer :age
      t.timestamps
    end
  end
end
