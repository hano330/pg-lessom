class CreateCurriculums < ActiveRecord::Migration[5.1]
  def change
    create_table :curriculums do |t|
      t.string :c_name
      t.integer :term
      t.integer :price
      t.timestamps
    end
  end
end
