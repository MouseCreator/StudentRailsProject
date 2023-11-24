class AddIdToStudent < ActiveRecord::Migration[7.1]
  def change
    add_index :students, :name, unique: true
  end
end
