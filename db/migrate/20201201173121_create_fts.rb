class CreateFts < ActiveRecord::Migration[6.0]
  def change
    create_table :fts do |t|
      t.float :value, null: false
      t.float :t1, null: false
      t.float :dw1, null: false

      t.timestamps
    end
  end
end
