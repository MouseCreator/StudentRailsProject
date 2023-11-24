class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.boolean :dorm
      t.string :language
      t.boolean :teacher
      t.string :university
      t.timestamps
    end
  end
end
