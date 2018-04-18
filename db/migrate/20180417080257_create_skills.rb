class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.integer :html
      t.integer :Sass
      t.integer :java
      t.integer :ruby
      t.integer :php
      t.integer :javascript
      t.integer :mysql
      t.timestamps
    end
  end
end
